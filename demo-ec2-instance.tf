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


resource "aws_insatnce" "demo-ec2-instance" {
    ami = "ami-02b8269d5e85954ef"
   # instance_type = "t2.micro"
   instance_type = var.instance_type
}


variable "instance_type" {
    default = "t2.micro"
    description = "EC2 VM instance type"
    type = string
}

output "ec2_instance_publicip" {
    description = "EC2 instance Public IP"
    value = aws_insatnce.demo-ec2-instance.public_ip 
}




