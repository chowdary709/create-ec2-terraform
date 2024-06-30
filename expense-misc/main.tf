resource "aws_route53_record" "workstation" {
  name    = "workstation.chowdary.cloud"
  type    = "A"
  zone_id = "Z0013695SMHQDK42GJB1"
  records = [data.aws_instance.Workstation.public_ip]
  ttl     = 10
}





