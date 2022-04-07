# terraform
Terraform is a binary for managing and orchestrating cloud
It's using .tf files to define the state on the cloud provider
.tf files store in a working directory will be executed
and apply the state on the infrastructure

## terraform installation
wget https://releases.hashicorp.com/terraform/0.12.18/terraform_0.12.18_linux_amd64.zip
unzip
mv terraform /usr/bin
terraform -v

## terraform commands
terraform -help
init        Initialize Terraform working directory
plan        Generate and show an execution plan
apply       Builds or changes infrastructure
destroy     Destroy Terraform-managed infrastructure


