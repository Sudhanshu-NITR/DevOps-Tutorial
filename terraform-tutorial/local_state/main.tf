terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "6.40.0"
        }
    }

    required_version = ">= 1.2.0"
}

# Configure the AWS Provider
provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "app_server" {
    ami           = "ami-05d2d839d4f73aafb"
    instance_type = "t3.micro"

    tags = {
        Name = "Terraform_Demo"
    }
}