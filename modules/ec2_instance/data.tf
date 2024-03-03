data "aws_ami" "centos" {
  executable_users = ["666171310914"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
}
