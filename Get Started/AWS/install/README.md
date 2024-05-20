# AWS - Install
* Check https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

# Goal
* Provision NGINX server

# Prerequisites
* [Docker Desktop](https://www.docker.com/products/docker-desktop/)

# Steps
* `terraform init`
* `terraform apply`
  * Open in your browser 'localhost:8000' to check that it's running the NGINX server
* `terraform destroy`
  * Open in your browser 'localhost:8000' to check that it's NOT running now