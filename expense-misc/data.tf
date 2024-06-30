data "aws_instances" "Workstation" {
  filter {
    name   = "tag:Name"
    values = ["Workstation"]
  }
}

data "aws_instances" "Jenkins" {
  filter {
    name   = "tag:Name"
    values = ["Jenkins"]
  }
}

data "aws_instances" "Sonarqube" {
  filter {
    name   = "tag:Name"
    values = ["Sonarqube"]
  }
}