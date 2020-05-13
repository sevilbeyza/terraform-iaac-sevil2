environment = "qa"
region = "us-east-2"
s3_bucket = "sevil-terraform-eks"                           #Will be used to set backend.tf
s3_folder_project = "application"                 #Will be used to set backend.tf
s3_folder_region = "us-east-1"                    #Will be used to set backend.tf
s3_folder_type = "state"                          #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate_ohio.json"   #Will be used to set backend.tf

vpc_id = "vpc-01aed1a054384e389"
subnet1 = "subnet-01e96f8807bebb069"
subnet2 = "subnet-0e4c299412f729b69"
subnet3 = "subnet-05db867eeaa243f8c"
cluster_name = "ohio-cluster"
instance_type = "t2.micro"
asg_max_size = "48" 
asg_min_size = "3"
asg_desired_capacity = "3"
cluster_version = "1.14"