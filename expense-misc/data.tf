data "aws_instance" "Workstation" {
  instance_id = "i-0769bb47be7608385"
}
data "aws_instances" "Workstation" {
  filter {
    name   = "tag:Name"
    values = ["Workstation"]
  }
}
