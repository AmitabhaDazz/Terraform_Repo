provider "aws" {
    region = "us-east-1"
    access_key = "AK"
    secret_key = "SK"
}


resource "aws_instance" "MyAWSResource" {
       ami             = var.ami-ad
       instance_type   = var.instance_type
}
