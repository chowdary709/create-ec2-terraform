default:
	git pull
#	rm -f .terraform/terraform-tfstate
	terraform init
	terraform apply -auto-approve 
destroy:
	terraform destroy -auto-approve
