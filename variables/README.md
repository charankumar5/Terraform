# Terraform Variables

## Check how variables are defined in the main.tf
while running terraform script, we need to explicitely pass subnet ID as we did not store it in the plain text.
- So first open VPC in the region where you are provisioning your AWS Instance.
- Then Go to VPC and Subnets and copy any subnet and pass as parameter in the command as follows:

    terraform apply -var="subnet_id=subnet-0934nnke8fj4k0s803js"

    terraform destroy -var="subnet_id=subnet-0934nnke8fj4k0s803js"

