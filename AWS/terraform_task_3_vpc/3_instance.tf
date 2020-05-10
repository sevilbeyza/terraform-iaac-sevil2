resource "aws_instance" "task3" {
  ami = "ami-0323c3dd2da7fb37d" 
  instance_type ="t2.micro"
  key_name = "${aws_key_pair.us-east-1-key_task2.key_name}"
  security_groups = ["${aws_security_group.allow_tls.name}"]
  user_data = "${file("11_user_data.sh")}"  
  tags ="${var.tags}"

}



