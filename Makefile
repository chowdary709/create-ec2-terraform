################################################apply#################################################################

default:
	git pull
	rm -f .terraform/terraform-tfstate
	terraform init
	terraform apply -auto-approve -var-file=input.tfvars

apply-module:
	terraform apply -auto-approve -target=module.$(MODULE) -var-file=input.tfvars

### make apply-module MODULE=mysql

################################################destroy#################################################################

destroy:
	rm -f .terraform/terraform-tfstate
	terraform destroy -auto-approve -var-file=input.tfvars
	terraform destroy -target=module.elk -var-file=input.tfvars

destroy-module:
	terraform destroy -auto-approve -target=module.$(MODULE) -var-file=input.tfvars

### make destroy-module MODULE=mysql

