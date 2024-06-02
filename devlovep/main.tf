resource "aws_launch_template" "template" {
  name = var.component
  image_id = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [var.vpc_security_group_ids]
  instance_initiated_shutdown_behavior = "terminate" # Changed to valid value

  instance_market_options {
    market_type = "spot"
  }

  network_interfaces {
    associate_public_ip_address = true
  }

  placement {
    availability_zone = var.azs
  }

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = var.component
    }
  }
}


resource "aws_instance" "instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true
  vpc_security_group_ids      = var.vpc_security_group_ids

  tags = {
    Name = var.instance_tag_name
  }
}
resource "aws_route53_record" "instance" {
  zone_id = "Z0013695SMHQDK42GJB1" // Replace with your hosted zone ID
  name    = var.route53_record_name
  type    = "A"
  ttl     = "5"
  records = [aws_instance.instance.private_ip]
}
