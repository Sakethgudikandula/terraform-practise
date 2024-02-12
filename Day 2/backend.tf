terraform {
   
  backend "s3" {
    bucket = "sakethbucket9989"
    key = "saketh/terraform.state"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "tf-lock"
  }
}