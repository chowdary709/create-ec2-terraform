resource "aws_spot_instance_request" "example" {
  ami             = "ami-0f3c7d07486cad139"   # Example AMI ID
  instance_type   = "t3.micro"                # Example instance type
  subnet_id       = "subnet-017ad3134d13bee7a" # Example subnet ID
  key_name        = "my_keypair"              # Example key pair name
  security_groups = ["sg-0b792d7d432d8d378"]  # Example security group ID

  spot_options {
    instance_type           = "one-time"       # Example spot instance type (one-time)
    instance_interruption_behavior = "terminate" # Example instance interruption behavior
  }

  tags = {
    Name = "example-spot-instance"            # Example tag
  }
}

