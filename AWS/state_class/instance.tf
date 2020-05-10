resource "aws_instance" "wordpress" {
  instance_type ="t2.micro"
  ami = "ami-0323c3dd2da7fb37d"    #we import this one , get from console and added  line 2-3
  # (resource arguments)
}