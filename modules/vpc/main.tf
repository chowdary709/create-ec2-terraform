provider "aws" {
  region = var.aws_region
}

resource "aws_security_group" "allow_all" {
  name        = var.security_group_name
  description = "Allow all inbound/outbound traffic"
  vpc_id      = var.vpc_id
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name = var.instance_name
  }

  security_groups = [aws_security_group.allow_all.name]

  instance_market_options {
    market_type = "spot"
    spot_options {
      spot_instance_type           = "persistent"
      instance_interruption_behavior = "stop"  # Corrected argument name
    }
  }
}

# Define a data source to fetch AMI ID
data "aws_ami" "centos" {
  most_recent = true

  filter {
    name   = "name"
    values = [var.ami_name]
  }
}
