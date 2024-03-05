resource "aws_instance" "instance" {
  ami                    = data.aws_ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  associate_public_ip_address = true


  vpc_security_group_ids = var.vpc_security_group_ids

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
