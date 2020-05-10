

output "instance_id" {
  value = "${aws_instance.web.id}"
}
output "instance_arn" {
  value = "${aws_instance.web.arn}"
}
output "instance_ip" {
  value = "${aws_instance.web.public_ip}"
}
output "instance_dn" {
  value = "${aws_instance.web.public_dns}"
}
output "instance_az" {
  value = "${aws_instance.web.availability_zone}"
}

output "sec_group vpc_id" {
  value = "${aws_security_group.allow_tls.vpc_id}"
}

output "sec_group description" {
  value = "${aws_security_group.allow_tls.description}"
}

output "route53 fqdn" {
  value = "${aws_route53_record.www.fqdn}"
}



