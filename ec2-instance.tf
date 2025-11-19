resource "aws_insatnce" "demo-ec2-instance" {
    ami = "ami-02b8269d5e85954ef"
   # instance_type = "t2.micro"
   instance_type = var.instance_type
   user_data = file("$path{path.module}/app1-install.sh")
   tags = {
    "Name" = "DEMO EC2 instance"
   }
}



output "ec2_instance_publicip" {
    description = "EC2 instance Public IP"
    value = aws_insatnce.demo-ec2-instance.public_ip 
}
