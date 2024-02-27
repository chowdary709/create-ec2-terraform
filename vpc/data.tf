data "aws_security_group" "allow_all" {
  name   = "allow-all"  # Name of the existing security group you want to fetch
  vpc_id = "vpc-0d36408476c035854"  # Optionally, specify the VPC ID if the security group is within a specific VPC
}
