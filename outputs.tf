/*
output "ec2_instance_publicip" {
    description = "EC2 instance Public IP"
    value = aws_insatnce.demo-ec2-instance.public_ip 
}


output "ec2_instance_publicdns" {
  description = "Ec2 Instance Public DNS"
  value = aws_insatnce.demo-ec2-instance.public_dns
}
*/

/*
output "for_output_list" {
  description = "For loop with list"
  value = [for instance in aws_instance.demo-ec2-instance : instance.public_dns]
}
*/

output "for_output_map1" {
    description = "From loop with map"
    value = [for instance in aws_instance.demo-ec2-instance :instance.id => instance.public_dns ]  
}


