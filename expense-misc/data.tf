data "aws_instance" "jenkins" {
  instance_id = "i-0f2fa8502b4f03347"
}

data "aws_instance" "workstation" {
  instance_id = "i-0769bb47be7608385"
}