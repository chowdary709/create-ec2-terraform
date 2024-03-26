#resource "aws_instance" "instance" {
#  ami                    = var.ami
#  instance_type          = var.instance_type
#  subnet_id              = var.subnet_id
#  associate_public_ip_address = true
#
#
#  vpc_security_group_ids = var.vpc_security_group_ids
#
#  tags = {
#    Name = var.instance_tag_name
#  }
#
#  // Spot instance options
#  instance_market_options {
#    market_type = "spot"
#    spot_options {
#      max_price             = "0" // No maximum price
#      instance_interruption_behavior = var.instance_interruption_behavior
#      spot_instance_type    = var.spot_instance_type
#    }
#  }
#}
#
#resource "aws_route53_record" "instance" {
#  zone_id = "Z08360431XA1BOY4SK2N0"
#  name    = var.route53_record_name
#  type    = "A"
#  ttl     = "300"
#  records = [aws_instance.instance.private_ip]
#}
resource "aws_instance" "instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  associate_public_ip_address = true

  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = var.instance_tag_name
  }

  user_data = <<-EOF
    #!/bin/bash
    dnf install python3.11-pip ansible -y | tee -a /opt/userdata.log
    pip3.11 install boto3 botocore | tee -a /opt/userdata.log
    ansible-pull -i localhost, -U https://github.com/chowdary709/expense-ansible  expense.yml -e role_name=${role_name} -e env=${ component } | tee -a /opt/userdata.log
    EOF

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

resource "aws_route53_record" "instance" {
  zone_id = "Z08360431XA1BOY4SK2N0"
  name    = var.route53_record_name
  type    = "A"
  ttl     = "300"
  records = [aws_instance.instance.private_ip]
}
