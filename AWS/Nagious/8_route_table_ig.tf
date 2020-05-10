resource "aws_route_table" "route_table" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.task3_IG.id}"
  }

  tags ="${var.tags}"
}

# Route Table association
resource "aws_route_table_association" "b1" {
  subnet_id      = "${aws_subnet.task3_public1.id}"
  route_table_id = "${aws_route_table.route_table.id}"

 
}

resource "aws_route_table_association" "b2" {
  subnet_id      = "${aws_subnet.task3_public2.id}"
  route_table_id = "${aws_route_table.route_table.id}"

  
}

resource "aws_route_table_association" "b3" {
  subnet_id      = "${aws_subnet.task3_public3.id}"
  route_table_id = "${aws_route_table.route_table.id}"


}