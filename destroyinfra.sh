#!/bin/bash

read -p "Enter AWS_WORKSPACE: " AWS_WORKSPACE

echo $AWS_ACCESS_KEY_ID && echo $AWS_SECRET_ACCESS_KEY

terraform init
terraform workspace list
terraform workspace select "${WORKSPACE}"
terraform destroy --var-file=vars_qa.tfvarss
