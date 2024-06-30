resource "aws_route53_record" "jenkins" {
  name    = "workstation.chowdary.cloud"
  type    = "A"
  zone_id = "Z0013695SMHQDK42GJB1"
  records = [data.aws_instance.workstation.public_ip]
  ttl     = 10
}

# resource "aws_route53_record" "jenkins" {
#   name    = "jenkins.chowdary.cloud"
#   type    = "A"
#   zone_id = "Z0013695SMHQDK42GJB1"
#   records = [data.aws_instance.jenkins.public_ip]
#   ttl     = 10
# }


