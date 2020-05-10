provider "aws" {
  region="us-east-1"
  version="2.59"
}

#WE ARE LOOKING OUTPUT HERE 



#create key
resource "aws_key_pair" "us-east-1-key-output" {
  key_name   = "farrukhs_bastion_output"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}



#creates instances
resource "aws_instance" "web-output" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
}




#creates sec Group


#creates Rout53



#output everthing 


output "key_pair"{
    value = "${aws_key_pair.us-east-1-key-output.key_name}"
}

output "instane_id"{
    value = "${aws_instance.web-output.id}"
}

output "instane_arn"{
    value = "${aws_instance.web-output.arn}"
}

output "instane_ip"{
    value = "${aws_instance.web-output.public_ip}"
}

# output "my_message"{
#     value = "${pleasechangeyourpassword}"
# }