provider "aws" {
    region = var.region
    access_key = var.access_id
    secret_key = var.secret_id
}

resource "aws_instance" "ad_ec2_1" {
    ami = lookup(var.ad_ami, var.region)
    instance_type = var.instance_type
    count = element(var.count1,1)
    tags = local.name
}
