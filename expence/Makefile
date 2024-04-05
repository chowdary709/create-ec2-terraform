################################################ apply #################################################################
default:
	git pull
	rm -f .terraform
	terraform init -backend-config=state.tfvars
	terraform apply -auto-approve -var-file=input.tfvars

apply-module:
	git pull
	terraform init -backend-config=state.tfvars
	terraform apply -auto-approve -target=module.$(MODULE) -var-file=input.tfvars

### make apply-module MODULE=mysql

###############################################  destroy  ##############################################################

destroy:
	rm -f .terraform/terraform-tfstate
	terraform init -backend-config=state.tfvars
	terraform destroy -auto-approve -var-file=input.tfvars

destroy-module:
	rm -f .terraform/terraform-tfstate
	terraform init -backend-config=state.tfvars
	terraform destroy -auto-approve -target=module.$(MODULE) -var-file=input.tfvars

### make destroy-module MODULE=mysql

