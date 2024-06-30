data "aws_instance" "workstation" {
  instance_id = "i-0769bb47be7608385"
}

data "aws_instance" "jenkins" {
  instance_id = "i-0769bb47be7608385"
}


data "aws_instance" "sonarqube" {
  instance_id = "i-0769bb47be7608385"
}