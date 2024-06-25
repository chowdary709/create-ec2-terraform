# module "jenkins" {
#   source                         = "./modules/ec2_instance"
#   ami                            = data.aws_ami.ami.id
#   subnet_id                      = var.us-east-1c
#   vpc_security_group_ids         = data.aws_security_group.sg.id
#   instance_interruption_behavior = var.instance_interruption_behavior
#   spot_instance_type             = var.spot_instance_type
#   instance_type                  = "t3.small"
#   instance_tag_name              = "jenkins"
#   route53_record_name            = "jenkins.chowdary.cloud"
# }


# module "elk" {
#   source                         = "./modules/ec2_instance"
#   ami                            = var.ami
#   subnet_id                      = var.us-east-1a
#   vpc_security_group_ids         = var.vpc_security_group_ids
#   instance_interruption_behavior = var.instance_interruption_behavior
#   spot_instance_type             = var.spot_instance_type
#   instance_type                  = "t3.large"
#   instance_tag_name              = "elk"
#   route53_record_name            = "elk.chowdary.cloud"
# }

# module "prometheus" {
#   source                         = "./modules/ec2_instance"
#   ami                            = var.ami
#   subnet_id                      = var.us-east-1a
#   vpc_security_group_ids         = var.vpc_security_group_ids
#   instance_interruption_behavior = var.instance_interruption_behavior
#   spot_instance_type             = var.spot_instance_type
#   instance_type                  = "t3.small"
#   instance_tag_name              = "prometheus"
#   route53_record_name            = "prometheus.chowdary.cloud"
# }

output "sg" {
  value = data.aws_security_group.sg.id
}
output "ami" {
  value = data.aws_ami.ami.id
}