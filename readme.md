### Implement dashboard in terraform for AWS

How to initialize Terraform
The workflow used in a Terraform project is as follows:


### Steps to run project

Init: Initialization of the project.

```terraform
terraform init
```
Plan: Planning of the resources defined in the code.

```terraform
terraform plan
```

Apply: Deployment of the resources defined in the code.

```terraform
terraform apply
```

Destroy: Destruction of the resources defined in the code (if necessary).

```terraform
terraform destroy
```

### Important: To run the project locally and be able to carry out the deployment, export the following variables by console with your AWS user credentials

```sh
export AWS_ACCESS_KEY_ID = "ID"
export AWS_SECRET_ACCESS_KEY = "SECRET_KEY"
```

### To run the project you can run the buildinfra script

```sh
. ./buildinfra.sh
```

### To execute destroy the project display you can run the buildinfra script

```sh
. ./destoryinfra.sh
```
