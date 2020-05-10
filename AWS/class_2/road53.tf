#create road53 record ===================================================================================================================

  resource "aws_route53_record" "www" {
    zone_id = "Z009097213R7B3H9ZE9ES"
    name    = "www.sevilcankiroglu.com"
    type    = "A"
    ttl     = "60"
    records = ["${aws_instance.web.public_ip}"]
  
  }