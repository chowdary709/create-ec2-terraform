default:
	git pull
#	rm -f .terraform/terraform-tfstate
	terraform init
	terraform apply -auto-approve -var-file=input.tfvars
destroy:
	terraform destroy -auto-approve -var-file=input.tfvars
