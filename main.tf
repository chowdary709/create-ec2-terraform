#data "aws_ami" "ami" {
#  most_recent = true
#  name_regex  = "Centos-8-DevOps-Practice"
#  owners      = ["666171310914"]
#}
#
#module "ec2" {
#  source                         = "./modules/ec2_instance"
#  ami                            = data.aws_ami.ami.id
#  subnet_id                      = var.subnet_id
#  vpc_security_group_ids         = var.vpc_security_group_ids
#  instance_interruption_behavior = var.instance_interruption_behavior
#  spot_instance_type             = var.spot_instance_type
#  instance_type                  = "t3.medium"
#  instance_tag_name              = "artifactory"
#}
#

data "aws_ami" "ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["*Centos-8-DevOps-Practice*"]
  }

  owners = ["666171310914"]
}

module "ec2" {
  source                         = "./modules/ec2_instance"
  ami                            = data.aws_ami.ami.id
  subnet_id                      = var.subnet_id
  vpc_security_group_ids         = var.vpc_security_group_ids
  instance_interruption_behavior = var.instance_interruption_behavior
  spot_instance_type             = var.spot_instance_type
  instance_type                  = "t3.medium"
  instance_tag_name              = "artifactory"
}
