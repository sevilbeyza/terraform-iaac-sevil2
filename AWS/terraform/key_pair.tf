resource "aws_key_pair" "deployer" {
  key_name   = "sevilTr_bastion"
  public_key = "${file("~/.ssh/id_rsa.pub")}"  #we are going to add faction location in it  
                                               # it was before public_key="key was in int"
}

