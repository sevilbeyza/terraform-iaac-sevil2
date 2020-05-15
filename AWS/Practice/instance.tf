# module "ec2_cluster" {
#   source                 = "terraform-aws-modules/ec2-instance/aws"
#   version                = "~> 2.0"

#   name                   = "my-test_instance"
#   instance_count         = 1

#   ami                    = "ami-0323c3dd2da7fb37d"
#   instance_type          = "t2.micro"
#   key_name               = "farrukhs_bastion_output"
#   monitoring             = true
#   vpc_security_group_ids = ["sg-043aec86f0b7e0e8f"]
#   subnet_id              = "subnet-07f905124e7be0f46"

#   tags = {
#     Terraform   = "true"
#     Environment = "dev"
#   }
# }