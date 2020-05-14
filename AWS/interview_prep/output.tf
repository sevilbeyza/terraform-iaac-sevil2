
# output "ec2_cluster" {
#   value = "${module.ec2_cluster.public_ip}"
# }


output "security_group" {
  value = "${module.web_server}"
}


