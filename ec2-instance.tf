data "aws_availability_zone" "my_azones" {
   filter {
     name = "opt-in-status"
     values = [ "opt-in-not-required" ]
   }
}

resource "aws_insatnce" "demo-ec2-instance" {
   # ami = "ami-02b8269d5e85954ef"
   # instance_type = "t2.micro"
   ami = data.aws_ami.amzlinux2.id
   instance_type = var.instance_type
   # instance_type = var.instance_type_list[1]
   # instance_type = var.instance_type_map["prod"]
   count = 2
   user_data = file("$path{path.module}/app1-install.sh")
   key_name = var.instance_keypair
   vpc_secuirty_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
   tags = {
    # "Name" = "DEMO EC2 instance"
    "Name" = "Count-demo-${count.index}"
   }
}




