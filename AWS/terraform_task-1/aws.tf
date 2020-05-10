 
 #in this task we create key-secgoup -volume-road53-bucket and attach the instance
 
 provider "aws" {
  region = "us-west-2" #oregon
}

#create key pear and read created key pair from file
resource "aws_key_pair" "deployer" {
  key_name   = "sevilTr_bastion2"
  public_key = "${file("~/.ssh/id_rsa.pub")}"  #we are going to add faction location in it  # it was before public_key="key was in int"
}


#create an instance ============================================================================================================================
resource "aws_instance" "web" {
  ami           = "ami-0d6621c01e8c2de2c"
  instance_type = "t2.large"
  key_name = "${aws_key_pair.deployer.key_name}"                #we added we copyed 3 part info yukardaki key_name instance a attach yaptik 
  security_groups = ["${aws_security_group.allow_tls.name}"]    #asagidan sec group ekledik asagidaki butun sec groupbu bu instance aaldik 
                                                                  #user_data = "${file("script.sh")}" you can add this line with userdata file .sh
#user data can be here with this format 6 line of code 
  user_data = <<EOF
     #! /bin/bash
     sudo yum install -y httpd
     sudo systemctl start httpd
     #sudo systemctl enable httpd
  EOF

tags = {
    Name = "HelloWorld2"
  }
}

 #create volume  and attach to instance ===========================================================================================================
 resource "aws_ebs_volume" "web" {
 availability_zone = "us-west-2a"
  size = 100
  tags = {
         Name = "web-data-volume"
   }
 }
 variable "data_volume_device_list" {
    description = "device list for EC2 mapping"
    type        = "list"
   default     = ["/dev/sdf", "/dev/sdg", "/dev/sdh", "/dev/sdi"]
  }
resource "aws_volume_attachment" "web_data_vol_att" {
  device_name = "${element(var.data_volume_device_list, count.index )}"
  volume_id   = "${element(aws_ebs_volume.web.*.id, count.index)}"
  instance_id = "${element(aws_instance.web.*.id, count.index)}"
}

 #note:intead of 3 block up you can use this code to creating and attaching volume 
#  resource "aws_ebs_volume" "volume" {
#   availability_zone = "us-west-2b"
#   size              = 100
#   tags = {
#     Name = "Task1_volume"
#   }
# }

# resource "aws_volume_attachment" "ebs_task1" {
#   device_name = "/dev/sdh"
#   volume_id   = "${aws_ebs_volume.volume.id}"
#   instance_id = "${aws_instance.web.id}"
# }
  
  
  
#create road53 record ===================================================================================================================

  resource "aws_route53_record" "www" {
    zone_id = "Z009097213R7B3H9ZE9ES"
    name    = "www.sevilcankiroglu.com"
    type    = "A"
    ttl     = "60"
    records = ["${aws_instance.web.public_ip}"]
  
  }

  #create security group ===============================================================================================

  resource "aws_security_group" "allow_tls" {
  name        = "allow_tls2"
  description = "Allow TLS inbound traffic"
  

  ingress {   #inbound rule HTTPS
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {   #inbound rule SSH
    description = "TLS from VPC"
    from_port   = 22 
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
 
 ingress {   #inbound rule HTTP
    description = "TLS from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  } 

  
  egress {    #outbond rule
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}








