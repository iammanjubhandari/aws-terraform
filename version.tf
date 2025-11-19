terraform {
  required_version = "~>1.6"  
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~=5.0"
    }
  }

  backend "s3" {
    bucket = "teraform-demo"
    key = "dev2/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "terraform-dev-state-table"
 }
}


provider "aws" {
    profile = default
    region = "us-east-1"
  
}
