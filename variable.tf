variable "aws_region" {
  ddescription = "Region in which ec2 instance is created"
  type = string
  default = "us-east-1"
}

variable "instance_type" {
    default = "t3.micro"
    description = "EC2 VM instance type"
    type = string
}

variable "instance_keypair" {
  description = "Key pair to create ec2 instance"
  type = string
  default = "terraform-key"
}
