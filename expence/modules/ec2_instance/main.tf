resource "aws_instance" "instance" {
  ami                          = var.ami
  instance_type                = var.instance_type
  subnet_id                    = var.subnet_id
  associate_public_ip_address  = true
  vpc_security_group_ids       = var.vpc_security_group_ids

  tags = {
    Name = var.instance_tag_name
  }

  // Spot instance options
  instance_market_options {
    market_type = "spot"
    spot_options {
      max_price             = "0" // No maximum price
      instance_interruption_behavior = var.instance_interruption_behavior
      spot_instance_type    = var.spot_instance_type
    }
  }
}

# output "public_ip_address" {
#   value = aws_instance.instance.public_ip
# }

resource "aws_route53_record" "instance" {
  zone_id = "Z0013695SMHQDK42GJB1" // Replace with your hosted zone ID
  name    = var.route53_record_name
  type    = "A"
  ttl     = "10"
  records = [aws_instance.instance.public_ip]
}

