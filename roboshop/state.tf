#terraform {
#  backend "s3" {}
#}
terraform {
  backend "s3" {
    bucket         = "terraform-709"
    key            = "expense-project/expense_ec2/terraform.tfstate"
    region         = "us-east-1"
  }
}
