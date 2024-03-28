default:
	git pull
	rm -f .terraform/terraform-tfstate
	terraform init
	terraform apply -auto-approve -var-file=input.tfvars
destroy:
	rm -f .terraform/terraform-tfstate
	terraform destroy -auto-approve -var-file=input.tfvars
	terraform destroy -target=module.elk -var-file=input.tfvars

destroy-elk:
	terraform destroy -auto-approve -target=module.elk -var-file=input.tfvars
