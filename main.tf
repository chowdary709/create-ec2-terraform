resource "aws_instance" "instance" {
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t3.medium"
  subnet_id              = "subnet-0233174d26bc6112d"
  associate_public_ip_address = true
#  key_name               = "your_key_pair_name"

  vpc_security_group_ids = [
    "sg-0b792d7d432d8d378"
  ]

  tags = {
    Name = "artifactory"
  }

  // Spot instance options
  instance_market_options {
    market_type = "spot"
    spot_options {
      max_price             = "0" // No maximum price
      instance_interruption_behavior = "stop"
      spot_instance_type    = "persistent"
    }
  }
}
