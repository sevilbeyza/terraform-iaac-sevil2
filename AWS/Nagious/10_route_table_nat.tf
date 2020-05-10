resource "aws_route_table" "route_table_private" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.task3_IG.id}"
  }

  tags ="${var.tags}"
}

# Route Table association
resource "aws_route_table_association" "prv_1" {
  subnet_id      = "${aws_subnet.task3_private1.id}"
  route_table_id = "${aws_route_table.route_table_private.id}"

 
}

resource "aws_route_table_association" "prv_2" {
  subnet_id      = "${aws_subnet.task3_private2.id}"
  route_table_id = "${aws_route_table.route_table_private.id}"

  
}

resource "aws_route_table_association" "prv_3" {
  subnet_id      = "${aws_subnet.task3_private3.id}"
  route_table_id = "${aws_route_table.route_table_private.id}"


}