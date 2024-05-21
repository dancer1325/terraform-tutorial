// Terraform settings
terraform {

  // Provider installed from Terraform Registry, by default
  required_providers {
    aws = {
      source  = "hashicorp/aws" // shorthand of   registry.terraform.io/hashicorp/aws
      version = "~> 5.5"       // If you do NOT specify -> most recent one is installed
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
  shared_credentials_files = ["$HOME/.aws/credentials"]
  profile = "default"
}

// resource “resource_type” “resource_name” { ... }
resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
