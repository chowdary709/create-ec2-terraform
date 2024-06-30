#!/bin/bash
################################################ apply #################################################################
default:
	git pull
	rm -f .terraform/terraform-tfstate
	terraform init -backend-config=terraform.tfstate
	terraform apply -auto-approve

###############################################  destroy  ##############################################################

destroy:
	rm -f .terraform/terraform-tfstate
	terraform init -backend-config=terraform.tfstate
	terraform destroy -auto-approve

