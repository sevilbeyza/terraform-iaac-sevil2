# Public Subnet
resource "aws_subnet" "task3_public1" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.public_cidr1}"
    #availabilty_zone ="${var.region}${var.az1}"
    #map_public_ip_on_lunch = true
    tags ="${var.tags}"
}


resource "aws_subnet" "task3_public2" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.public_cidr2}"
    #availabilty_zone ="${var.region}${var.az2}"
    #map_public_ip_on_lunch = true
    tags ="${var.tags}"

}
resource "aws_subnet" "task3_public3" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.public_cidr3}"
    #availabilty_zone ="${var.region}${var.az3}"
    #map_public_ip_on_lunch = true
    tags ="${var.tags}"
}



####################################################################

# Private subnets
resource "aws_subnet" "task3_private1" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.private_cidr1}"
    #availabilty_zone ="${var.region}${var.az1}"
   # map_public_ip_on_lunch = true
    tags ="${var.tags}"

}



resource "aws_subnet" "task3_private2" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.private_cidr2}"
    #availabilty_zone ="${var.region}${var.az2}"
   # map_public_ip_on_lunch = true
    tags ="${var.tags}"
}



resource "aws_subnet" "task3_private3" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.private_cidr3}"
    #availabilty_zone ="${var.region}${var.az3}"
    #map_public_ip_on_lunch = true
    tags ="${var.tags}"
}
