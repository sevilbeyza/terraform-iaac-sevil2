resource "aws_instance" "web" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  key_name= "${aws_key_pair.deployer.key_name}"                #we added we copyed 3 part info yukardaki key_name instance a attach yaptik 
  security_groups = ["${aws_security_group.allow_tls.name}"]    #asagidan sec group ekledik asagidaki butun sec groupbu bu instance aaldik 
  tags = {
    Name = "HelloWorld"
  }
}