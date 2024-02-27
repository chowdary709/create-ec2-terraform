resource "aws_spot_instance_request" "example" {
  ami             = "ami-0f3c7d07486cad139"
  instance_type   = "t3.small"
  subnet_id       = "subnet-017ad3134d13bee7a"
  key_name        = "artifactory"
  security_groups = ["sg-0b792d7d432d8d378"]

  spot_options {
    instance_type           = "persistent"  # You can set to "one-time" or "persistent"
    instance_interruption_behavior = "stop"  # Stop the instance on interruption
  }

  # Optional tags
  tags = {
    Name = "artifactory"
  }
}
