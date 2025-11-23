
output "ec2_instance_publicip" {
    description = "EC2 instance Public IP"
    value = aws_insatnce.demo-ec2-instance.public_ip 
}


output "ec2_instance_publicdns" {
  description = "Ec2 Instance Public DNS"
  value = aws_insatnce.demo-ec2-instance.public_dns
}




