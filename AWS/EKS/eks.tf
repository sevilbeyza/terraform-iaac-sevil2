data "aws_eks_cluster" "cluster" { 
  #below line works but VS not understand yet this new version thougt error 
  name = module.my-cluster.cluster_id  
} 
data "aws_eks_cluster_auth" "cluster" { 
  name = module.my-cluster.cluster_id 
} 
provider "kubernetes" { 
  host = data.aws_eks_cluster.cluster.endpoint #in version 11 we had "${}" 12 does not have 
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data) 
  token = data.aws_eks_cluster_auth.cluster.token 
  load_config_file = false 
  version = "~> 1.9" 
} 
module "my-cluster" { 
  source = "terraform-aws-modules/eks/aws" 
  cluster_name = "my-cluster" 
  cluster_version = "1.14" 
  subnets = [
      "subnet-07f905124e7be0f46", #we added our region default subnets id a-b-c and below our default vpc
      "subnet-06913eeaf7a30567f", 
      "subnet-05ca064ed1b43b1bb"
      ] 
  vpc_id = "vpc-00029c9843855ed10" 
  worker_groups = [{ 
    instance_type = "m4.large" 
    asg_max_size = 48    #we add this 3 line  go and check asg you will see this number 
    asg_min_size = 3
    asg_desired_capacity = 3

    } 
  ] 
} 

