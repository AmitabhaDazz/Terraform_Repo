provider "aws" {
  region     = lookup(var.reg, "us")
  secret_key = var.sk
  access_key = var.ak
}

data "aws_ami" "ad_ami" {
  most_recent = "true"
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

