provider "aws" {
    region = "us-east-1"
    access_key = "accesskey"
    secret_key = "secret"
}
resource "aws_instance" "ad-ec2" {
    ami = "ami-02354e95b39ca8dec"
    instance_type = "t2.micro"

}