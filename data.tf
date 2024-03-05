data "aws_ami" "centos" {
  owners           = ["973714476881"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
}
#terraform {
#  backend "s3" {
#    bucket = "terraform-709"
#    key    = "misc/jenkins-ip/terraform.tfstate"
#    region = "us-east-1"
#  }
#}
#
##data "aws_instance" "instance" {
##  instance_id = "i-065c4ac84713c7ecd"
##}
##
##resource "aws_route53_record" "jenkins" {
##  name = "jenkins.roboshop.internal"
##  type = "A"
##  zone_id = "Z08360431XA1BOY4SK2N0"
##  records = [data.aws_instance.instance.public_ip]
##  ttl = 10
##}
#
#data "aws_instance" "artifactory" {
#  instance_id = "i-0525a32312f8adeba"
#}
#
#resource "aws_route53_record" "artifactory" {
#  name = "artifactory.roboshop.internal"
#  type = "A"
#  zone_id = "Z08360431XA1BOY4SK2N0"
#  records = [data.aws_instance.artifactory.public_ip]
#  ttl = 10
#}