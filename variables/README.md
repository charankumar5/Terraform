# Terraform Variables

## Options to Declare variables and Use:
**It is purely based on the higher precedence from top to bottom.

- Using default in .tf files
- Using ENV Variables
- terrafrom.tfvars
- terraform.tfvars.json
- *.auto.tfvars or *.auto.tfvars.json
- Any other -var or -var-file option to pass variable parameters while running commands

## Check how variables are defined in the main.tf
while running terraform script, we need to explicitely pass subnet ID as we did not store it in the plain text.
- So first open VPC in the region where you are provisioning your AWS Instance.
- Then Go to VPC and Subnets and copy any subnet and pass as parameter in the command as follows:

    terraform apply -var="subnet_id=subnet-0934nnke8fj4k0s803js"

    terraform destroy -var="subnet_id=subnet-0934nnke8fj4k0s803js"

## Example
- Whenever you define variable in default file, and also defined and exported using ENV on terminal. .tf files fetch ENV values instead default declared values.


## Output variables or file
- These variables or separate file will be created or defined to fetch the important output of any service or something we are provisioning and to pass that output ID's to other processes.
- This helps to fetch the resource output ex: resource ID store at some place for future use case.
- they display important information after Terraform creates your infrastructure.

## Display Output
Once you run ``` terraform apply ``` you can display it using below command
     
     terraform output
     terraform output -json
     terraform output aws_instance

#### Ref: https://www.youtube.com/watch?v=V-2yC39BONc&list=PLl4APkPHzsUXcfBSJDExYR-a4fQiZGmMp&index=9