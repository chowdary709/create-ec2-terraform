data "aws_ami" "centos" {
  most_recent      = true
  filter {
    name   = "name"
    values = ["*Centos-8-DevOps-Practice*"]
  }
  filter {
    name   = "executable-users"
    values = ["666171310914"]
  }
}

resource "aws_instance" "instance" {
  ami                    = data.aws_ami.centos.id // Use .id to get the AMI ID
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
      max_price                        = "0" // No maximum price
      instance_interruption_behavior   = var.instance_interruption_behavior
      spot_instance_type               = var.spot_instance_type
    }
  }
}
