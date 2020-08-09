provider "aws" {
    region = "us-east-1"
    access_key = var.access_id
    secret_key = var.secret_id
}

resource "aws_instance" "ad_ec2" {
    ami = var.ad_ami
    instance_type = var.instance_type
    count = 2
    tags = {
        Name = var.tags[count.index]
    }
}
