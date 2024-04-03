#data "aws_ami" "ami" {
#  most_recent = true
#  name_regex  = "Centos-8-DevOps-Practice"
#  owners      = ["666171310914"]
#}
#
module "redis" {
  source                         = "./modules/ec2_instance"
  ami                            = var.ami
  subnet_id                      = var.subnet_id
  vpc_security_group_ids         = var.vpc_security_group_ids
  instance_interruption_behavior = var.instance_interruption_behavior
  spot_instance_type             = var.spot_instance_type
  instance_type                  = "t2.micro"
  instance_tag_name              = "redis"
  route53_record_name            = "redis.roboshop.internal"
  component                      = "frontend"
}

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
  component                      = ""
}

module "mongodb" {
  source                         = "./modules/ec2_instance"
  ami                            = var.ami
  subnet_id                      = var.subnet_id
  vpc_security_group_ids         = var.vpc_security_group_ids
  instance_interruption_behavior = var.instance_interruption_behavior
  spot_instance_type             = var.spot_instance_type
  instance_type                  = "t2.micro"
  instance_tag_name              = "mongodb"
  route53_record_name            = "mongodb.roboshop.internal"
  component                      = ""
}

module "catalogue" {
  source                         = "./modules/ec2_instance"
  ami                            = var.ami
  subnet_id                      = var.subnet_id
  vpc_security_group_ids         = var.vpc_security_group_ids
  instance_interruption_behavior = var.instance_interruption_behavior
  spot_instance_type             = var.spot_instance_type
  instance_type                  = "t2.micro"
  instance_tag_name              = "catalogue"
  route53_record_name            = "catalogue.roboshop.internal"
  component                      = ""
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
  component                     = ""
}

module "mysql" {
 source                         = "./modules/ec2_instance"
 ami                            = var.ami
 subnet_id                      = var.subnet_id
 vpc_security_group_ids         = var.vpc_security_group_ids
 instance_interruption_behavior = var.instance_interruption_behavior
 spot_instance_type             = var.spot_instance_type
 instance_type                  = "t2.micro"
 instance_tag_name              = "mysql"
 route53_record_name            = "mysql.roboshop.internal"
  component                     = ""
}

module "elk" {
  source                         = "./modules/ec2_instance"
  ami                            = var.ami
  subnet_id                      = var.subnet_id
  vpc_security_group_ids         = var.vpc_security_group_ids
  instance_interruption_behavior = var.instance_interruption_behavior
  spot_instance_type             = var.spot_instance_type
  instance_type                  = "r5.large"
  instance_tag_name              = "elk"
  route53_record_name            = "elk.roboshop.internal"
  component                      = ""
}

