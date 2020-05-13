environment = "stage"
region = "us-west-2"
s3_bucket = "sevil-terraform-eks"                           #Will be used to set backend.tf
s3_folder_project = "application"                 #Will be used to set backend.tf
s3_folder_region = "us-east-1"                    #Will be used to set backend.tf
s3_folder_type = "state"                          #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate_oregon.json"   #Will be used to set backend.tf

vpc_id = "vpc-0b17e47a28a1cca71"
subnet1 = "subnet-068cf857551ae0ae2"
subnet2 = "subnet-0f210d3d550bbd1ae"
subnet3 = "subnet-0874dba226a0e7328"
cluster_name = "oregon-cluster"
instance_type = "t2.micro"
asg_max_size = "48" 
asg_min_size = "3"
asg_desired_capacity = "3"
cluster_version = "1.14"