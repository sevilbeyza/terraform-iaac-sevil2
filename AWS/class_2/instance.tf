resource "aws_instance" "web" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  user_data = "${file("user_data.sh")}"   //read the installing appach command
  
  tags = {
    Name = "HelloWorld"
  }
}