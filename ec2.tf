provider "aws" {
  region     = "us-east-1"
}

data "aws_ami" "ad_ami" {
  most_recent = "true"
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}
resource "aws_instance" "awsec2" {
  ami           = data.aws_ami.ad_ami.id
  instance_type = "t2.small"
}

