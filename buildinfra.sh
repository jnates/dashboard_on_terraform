#!/bin/bash

read -p "Enter WORKSPACE: " WORKSPACE

echo $AWS_ACCESS_KEY_ID && echo $AWS_SECRET_ACCESS_KEY

terraform init
terraform workspace list
terraform workspace select "${WORKSPACE}"
terraform apply --var-file=vars_qa.tfvars
