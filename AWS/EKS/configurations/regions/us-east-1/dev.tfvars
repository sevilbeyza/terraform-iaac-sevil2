environment = "dev"
region = "us-east-1"
s3_bucket = "sevil-terraform-eks"              #Will be used to set backend.tf                     put your bucket !!!!
s3_folder_project = "application"            #Will be used to set backend.tf
s3_folder_region = "us-east-1"               #Will be used to set backend.tf
s3_folder_type = "state"                     #Will be used to set backend.tf
s3_tfstate_file = "infrastructer.tfstate.json"   #Will be used to set backend.tf

vpc_id = "vpc-00029c9843855ed10"             #vpc and subnet same in eks file 
subnet1 = "subnet-07f905124e7be0f46"
subnet2 = "subnet-06913eeaf7a30567f"
subnet3 = "subnet-05ca064ed1b43b1bb"
cluster_name = "my-cluster"
instance_type = "t2.micro"
asg_max_size = "48" 
asg_min_size = "3"
asg_desired_capacity = "3"
cluster_version = "1.14"
