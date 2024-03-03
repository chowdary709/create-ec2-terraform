subnet_id              = "subnet-0233174d26bc6112d"
vpc_security_group_ids = ["sg-0b792d7d432d8d378"]
instance_interruption_behavior = "stop"
spot_instance_type     = "persistent"

#ami                    = "ami-0f3c7d07486cad139"


#resource "aws_instance" "instance" {
#  ami                    = ami-0f3c7d07486cad139
#  instance_type          = var.instance_type
#  subnet_id              = var.subnet_id
#  associate_public_ip_address = true
#
#
#  vpc_security_group_ids = [ "sg-0b792d7d432d8d378" ]
#
#  tags = {
#    Name = "artifactory"
#  }
#
#  // Spot instance options
#  instance_market_options {
#    market_type = "spot"
#    spot_options {
#      max_price             = "0" // No maximum price
#      instance_interruption_behavior = "stop"
#      spot_instance_type    = "persistent"
#    }
#  }
#}




#subnet-0247672ece18e6e2d            us-east-1e
#–
#subnet-0233174d26bc6112d            us-east-1c
#–
#subnet-0a0921662d2e5c383            us-east-1d
#–
#subnet-0a0e628511903cfb1            us-east-1f
#–
#subnet-0804bbb270a178237            us-east-1a
#–
#subnet-017ad3134d13bee7a            us-east-1b
