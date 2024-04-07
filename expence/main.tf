module "frontend" {
  source                         = "./modules/ec2_instance"
  ami                            = var.ami
  subnet_id                      = var.subnet_id
  vpc_security_group_ids         = var.us-east-1c
  instance_interruption_behavior = var.instance_interruption_behavior
  spot_instance_type             = var.spot_instance_type
  instance_type                  = "t2.micro"
  instance_tag_name              = "frontend"
  route53_record_name            = "frontend.roboshop.internal"
}


module "mysql" {
 source                         = "./modules/ec2_instance"
 ami                            = var.ami
 subnet_id                      = var.subnet_id
  vpc_security_group_ids         = var.us-east-1b
 instance_interruption_behavior = var.instance_interruption_behavior
 spot_instance_type             = var.spot_instance_type
 instance_type                  = "t2.micro"
 instance_tag_name              = "mysql"
 route53_record_name            = "mysql.roboshop.internal"
}

module "backend" {
 source                         = "./modules/ec2_instance"
 ami                            = var.ami
 subnet_id                      = var.subnet_id
  vpc_security_group_ids         = var.us-east-1c
 instance_interruption_behavior = var.instance_interruption_behavior
 spot_instance_type             = var.spot_instance_type
 instance_type                  = "t2.micro"
 instance_tag_name              = "backend"
 route53_record_name            = "backend.roboshop.internal"
}

module "elk" {
  source                         = "./modules/ec2_instance"
  ami                            = var.ami
  subnet_id                      = var.subnet_id
   vpc_security_group_ids         = var.us-east-1c
  instance_interruption_behavior = var.instance_interruption_behavior
  spot_instance_type             = var.spot_instance_type
  instance_type                  = "r5.large"
  instance_tag_name              = "elk"
  route53_record_name            = "elk.roboshop.internal"
}

