# Web server allows all http/https traffic.

module "web_server" {
  source = "yukihira1992/simple-sg/aws"

  tags = {
    Name = "web-server"
    Environment = "dev"
  }

  ingress_rules = [
    {
      port = 80
      cidr_blocks = [
        "0.0.0.0/0",
      ]
    },
    {
      port = 443
      cidr_blocks = [
        "0.0.0.0/0",
      ]
    },
  ]
}