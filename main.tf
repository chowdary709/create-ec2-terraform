module "ec2" {
  source                         = "./modules/ec2_instance"
  ami                            = data.aws_ami.centos
  subnet_id                      = var.subnet_id
  vpc_security_group_ids         = var.vpc_security_group_ids
  instance_interruption_behavior = var.instance_interruption_behavior
  spot_instance_type             = var.spot_instance_type
  instance_type                  = "t3.medium"
  instance_tag_name              = "artifactory"
}
