variable "aws_region" {
  description = "Region in which ec2 instance is created"
  type = string
  default = "us-east-1"
}

variable "instance_type_list" {
    description = "EC2 VM instance type"
     type = list(string)
    default = ["t3.micro" , "t3.small" ]
}

variable "instance_type_map" {
  description = "Ec2 Instance type"
  value = map(string)
  default = {
    "dev" = "t3.micro"
    "qa" = "t3.small"
    "prod" = "t3.large"
  }
}

variable "instance_keypair" {
  description = "Key pair to create ec2 instance"
  type = string
  default = "terraform-key"
}
