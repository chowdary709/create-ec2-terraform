#data "aws_ami" "ami" {
#  most_recent = true
#  name_regex  = "Centos-8-DevOps-Practice"
#  owners      = ["666171310914"]
#}

module "frontend" {
  source                         = "./modules/ec2_instance"
  ami                            = var.ami
  subnet_id                      = var.subnet_id
  vpc_security_group_ids         = var.vpc_security_group_ids
  instance_interruption_behavior = var.instance_interruption_behavior
  spot_instance_type             = var.spot_instance_type
  instance_type                  = "t2.micro"
  instance_tag_name              = "frontend"
  route53_record_name            = "frontend.roboshop.internal"
}



module "backend" {
  source                         = "./modules/ec2_instance"
  ami                            = var.ami
  subnet_id                      = var.subnet_id
  vpc_security_group_ids         = var.vpc_security_group_ids
  instance_interruption_behavior = var.instance_interruption_behavior
  spot_instance_type             = var.spot_instance_type
  instance_type                  = "t2.micro"
  instance_tag_name              = "backend"
  route53_record_name            = "backend.roboshop.internal"
}

