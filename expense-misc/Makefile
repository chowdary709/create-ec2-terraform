#!/bin/bash
################################################ apply #################################################################
default:
	git pull
	rm -f .terraform/terraform-tfstate
	terraform init
	terraform apply -auto-approve -var-file=input.tfvars

###############################################  destroy  ##############################################################

destroy:
	rm -f .terraform/terraform-tfstate
	terraform init
	terraform destroy -auto-approve -var-file=input.tfvars

