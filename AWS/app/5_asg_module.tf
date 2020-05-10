module "app1" { 
source = "./module"
region =  "us-west-2"
key_name = "Terraform_module"
image_owner = "137112412989"
desired_capacity = 1
max_size         = 1
min_size         = 1
} 

# module "wordpress" { 
# source = "./module" 
# region =  "us-east-2"
# key_name = "Terraform_module"
# owners = "137112412989"
# desired_capacity = 1
# max_size         = 1
# min_size         = 1
# }