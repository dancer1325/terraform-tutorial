# AWS - Build
* Check https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build

# Goal
* Provision EC2 instance

# Prerequisites
* Terraform installed -- Check '../Install'
* [AWS CLI installed locally](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
* AWS account with [associated credentials](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication-and-configuration)
  * via 
    * add in the 'provider' block
    * environment variables
      * 'AWS_ACCESS_KEY_ID'
      * 'AWS_SECRET_ACCESS_KEY'
      * 'AWS_REGION'
    * credential files
      * `aws config` & pass the 'AWS_ACCESS_KEY_ID' & 'AWS_SECRET_ACCESS_KEY' 
    * TODO:

# Steps
* Create manually 'main.tf' and paste the content
* `terraform init`
  * downloads the 'aws' provider
* `terraform fmt`
* `terraform validate` 
* `terraform apply`
  * Problems:
    * Problem1: " validating provider credentials: retrieving caller identity from STS: operation error STS: GetCallerIdentity"
      * Attempt1: Add 'credential files' authentication
      * Solution: Adjust aws.version & `terraform init -upgrade`
* `terraform show`
  * inspect the current state
* `terraform state list`
  * list the resources in your project's state
* `terraform destroy`
  * destroy all remote objects managed by Terraform

# Notes
* 'terraform.tfstate'
  * store sensitive information
  * recommendations
    * restrictive access to this file
    * store the state remotely -- '../Fundamentals/HCP Terraform/Migrate state' --