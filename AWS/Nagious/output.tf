output "key_pair"{
    value = "${aws_key_pair.us-east-1-key_task2.key_name}"
}



output "sec_group"{
    value = [
        "${aws_security_group.allow_tls.name}",
        "${aws_security_group.allow_tls.vpc_id}",
        "${aws_security_group.allow_tls.egress}"
    ]
}


output "vpc_id "{
    value = "${aws_vpc.main.id}"
}

output "public_subnet "{
    value = [
    "${aws_subnet.task3_public1.id}   ${aws_subnet.task3_public1.vpc_id}   ${aws_subnet.task3_public1.cidr_block}",
    "${aws_subnet.task3_public2.id}   ${aws_subnet.task3_public2.vpc_id}   ${aws_subnet.task3_public2.cidr_block}",
    "${aws_subnet.task3_public3.id}   ${aws_subnet.task3_public3.vpc_id}   ${aws_subnet.task3_public3.cidr_block}"
    ]
}



output "private_subnet "{
    value = [
    "${aws_subnet.task3_private1.id}   ${aws_subnet.task3_private1.vpc_id}   ${aws_subnet.task3_private1.cidr_block}",
    "${aws_subnet.task3_private2.id}   ${aws_subnet.task3_private2.vpc_id}   ${aws_subnet.task3_private2.cidr_block}",
    "${aws_subnet.task3_private3.id}   ${aws_subnet.task3_private3.vpc_id}   ${aws_subnet.task3_private3.cidr_block}"
    ]
}




output "aws_internet_gateway_id "{
    value = "${aws_internet_gateway.task3_IG.id}"
}



output "aws_IG_route_table_id "{
    value = [
        "${aws_route_table.route_table.id}",
        "${aws_route_table.route_table_private.id}"
    ]
}

output "allocation_ip "{
    value = "${aws_eip.allocation_ip.id}"
}

output "aws_route_table_association "{
    value =[
        "${aws_route_table_association.b1.id}",
        "${aws_route_table_association.b2.id}",
         "${aws_route_table_association.b3.id}"
    ]
}



output "aws_route_table_association_private"{
    value = [
    "${aws_route_table_association.prv_1.id}",
    "${aws_route_table_association.prv_2.id}",
    "${aws_route_table_association.prv_3.id}"
    ]
}

output "Nagious"{
    value = [
    "${aws_instance.nagiosxi.id}",
    "${aws_instance.nagiosxi.key_name}",
    "${aws_instance.nagiosxi.vpc_security_group_ids}",
     "${aws_instance.nagiosxi.subnet_id}",
      "${aws_instance.nagiosxi.public_dns}"
    ]
}

output "nagios_username" {
  value = "nagiosadmin"
}
output "nagios_password" {
  value = "g%0H8QfRPa0aP44G!VNU"
}

output "Project Name" {
  value = "NagiosXI Installation"
}



    #  output ="Region" 
    #      value = "${var.}" 
        


    #  output ="Tags"
    #      value ="${var.tags}" 




