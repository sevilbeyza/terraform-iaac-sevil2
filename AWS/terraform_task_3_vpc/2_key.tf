resource "aws_key_pair" "us-east-1-key_task2" {
  #key_name   = "task3_key"
  key_name   = "${var.key_name}"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
  tags ="${var.tags}" 



}
  