provider "aws" {
  region = "us-east-1"
}

module "ec2instance" {
  source = "./modules/ec2_instance"
  ami = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  key_name = "ubuntu"
  vpc_security_group_ids = ["sg-0fd4b84f982960417"]
  subnet_id = "subnet-015d00b1a2d14901d"
  

}
