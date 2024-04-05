module "web" {
  source                         = "./modules/ec2_instance"
  ami                            = var.ami
  subnet_id                      = var.subnet_id
  vpc_security_group_ids         = var.vpc_security_group_ids
  instance_interruption_behavior = var.instance_interruption_behavior
  spot_instance_type             = var.spot_instance_type
  instance_type                  = "t2.micro"
  instance_tag_name              = "web"
  route53_record_name            = "web.roboshop.internal"
}

