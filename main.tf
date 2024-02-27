module "vpc" {
  source                 = "./modules/vpc"

  ami_id              = var.ami_id
  ami_name            = var.ami_name
  aws_region          = "us-east-1c"
  instance_name       = "artifactory"
  instance_type       = "t2.micro"
  security_group_name = var.security_group_name
  subnet_id           = "subnet-0233174d26bc6112d"
  vpc_id              = var.vpc_id
}
