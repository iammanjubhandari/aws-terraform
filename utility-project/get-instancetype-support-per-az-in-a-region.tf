data "aws_ec2_instance_type_offering" "my_ins_type1" {
  filter {
    name = "instance-type"
    value = ["t3.micro"]
  }
  filter {
    name = "location"
    values = ["us-east-1e"]
  }
  location_type = "availability-zone"
}

