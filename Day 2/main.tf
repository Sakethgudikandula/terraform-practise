provider "aws" {
    region = "us-east-1"
    access_key =  "
    secret_key =  " 
}

resource "aws_instance" "example" {
    ami = "ami-0c7217cdde317cfec"
    instance_type = "t2.micro"
    iam_instance_profile = "iaminstance_new"
    subnet_id = "subnet-015d00b1a2d14901d"
    tags = {
      name = "terraform test12"
    }
}

resource "aws_s3_bucket" "buckets3" {
    bucket = "sakethbucket9989"    
}

resource "aws_dynamodb_table" "tf_lock" {
  name = "tf-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "lock-id"
  attribute {
    name = "lock-id"
    type= "S"
  }
}
