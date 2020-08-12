provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "mumbai"
  region = "ap-south-1"
}
resource "aws_eip" "ip1" {
  vpc = "true"
}

resource "aws_eip" "ip2" {
  provider = "aws.mumbai"
  vpc      = "true"
}
