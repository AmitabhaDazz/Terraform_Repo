provider "aws" {
    region = "us-east-1"
    access_key = var.access_id
    secret_key = var.secret_id
}

resource "aws_instance" "ad_ec2_1" {
    ami = var.ad_ami
    instance_type = var.instance_type
    count = 1
    tags = local.name
}
