output "ec2intancepublicip" {
    value = aws_instance.practise.public_ip
}