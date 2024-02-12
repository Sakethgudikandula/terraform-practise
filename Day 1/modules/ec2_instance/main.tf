provider "aws" {
    region = "us-east-1"
    access_key = "AKIAX4IYYLEUXKAFEQ55"
    secret_key = "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" 
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