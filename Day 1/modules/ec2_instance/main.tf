provider "aws" {
    region = "us-east-1"
    access_key = ""
<<<<<<< HEAD
    secret_key = 
=======
    secret_key = "" 
>>>>>>> 441893d6cf6c697a8972dd2019b8f9ee2e56957b
}

resource "aws_instance" "practise" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    key_name = var.key_name
    vpc_security_group_ids = var.vpc_security_group_ids
    tags = {
      Name = "terraform prac"
    }
}