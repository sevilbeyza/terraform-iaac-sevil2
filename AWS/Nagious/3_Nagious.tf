
resource "aws_instance" "nagiosxi" {
  instance_type               = "${var.instance_type}"
  ami                         = "${var.ami}"
  key_name                    = "${var.key_name}"
  associate_public_ip_address = "true"
  security_groups             = ["${aws_security_group.allow_tls.name}"]

  tags = {
    Name = "Nagious_Bastion"
  }

  provisioner "remote-exec" {
    connection {
      host        = "${self.public_ip}"
      type        = "ssh"
      user        = "${var.user}"
      private_key = "${file(var.ssh_key_private)}"
    }

    inline = [
      "sudo yum install unzip  curl -y",
      "sudo curl https://assets.nagios.com/downloads/nagiosxi/install.sh | sudo sh"
      
    ]
  }
}
