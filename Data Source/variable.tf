variable access_id {
    type = string
    default = "AI"
}
variable secret_id {
    type = string
    default = "AI"
}
variable ad_ami {
    type = map
}
variable instance_type {
    type = string
    default = "t2.micro"
}
variable "region" {
    default = "us-east-1"
}
variable "count1" {
    type = list
}
locals {
    name= {
        dev = "prod"
        owner = "ad"
        
    }
}
data "aws_ami" "ad_ami" {
    most_recent = true
    owners = ["amazon"]

    filter {
        name = "name"
        values = ["amzn2-ami-hvm*"]
    }
}