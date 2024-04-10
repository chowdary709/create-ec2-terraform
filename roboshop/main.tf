module "web" {
  source                         = "./modules/ec2_instance"
  ami                            = var.ami
  subnet_id                      = var.us-east-1c
  vpc_security_group_ids         = var.vpc_security_group_ids
  instance_interruption_behavior = var.instance_interruption_behavior
  spot_instance_type             = var.spot_instance_type
  instance_type                  = "t2.micro"
  instance_tag_name              = "web"
  route53_record_name            = "web.roboshop.internal"
}

module "mongodb" {
  source                         = "./modules/ec2_instance"
  ami                            = var.ami
  subnet_id                      = var.us-east-1c
  vpc_security_group_ids         = var.vpc_security_group_ids
  instance_interruption_behavior = var.instance_interruption_behavior
  spot_instance_type             = var.spot_instance_type
  instance_type                  = "t2.micro"
  instance_tag_name              = "mongodb"
  route53_record_name            = "mongodb.roboshop.internal"
}

module "catalogue" {
  source                         = "./modules/ec2_instance"
  ami                            = var.ami
  subnet_id                      = var.us-east-1c
  vpc_security_group_ids         = var.vpc_security_group_ids
  instance_interruption_behavior = var.instance_interruption_behavior
  spot_instance_type             = var.spot_instance_type
  instance_type                  = "t2.micro"
  instance_tag_name              = "catalogue"
  route53_record_name            = "catalogue.roboshop.internal"
}

