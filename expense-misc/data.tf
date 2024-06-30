data "aws_instance" "workstation" {
  instance_id = "i-0769bb47be7608385"
}
data "aws_instances" "workstation" {
  filter {
    name   = "tag:Name"
    values = ["workstation"]
  }
}

output "workstation_instance_id" {
  value = data.aws_instances.workstation.id
}