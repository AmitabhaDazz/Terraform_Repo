provider "aws" {
    region = "us-east-1"
    access_key = "AK"
    secret_key = "SK"
}

resource "aws_eip" "ad-ip" {
    vpc = true

}
resource "aws_instance" "ad-ec2" {
    ami = "ami-02354e95b39ca8dec"
    instance_type = "t2.micro"
}
resource "aws_eip_association" "eip_assoc" {
    instance_id = aws_instance.ad-ec2.id
    allocation_id = aws_eip.ad-ip.id
}
output ops3{
    value = aws_instance.ad-ec2
}
output opip {
    value = aws_eip.ad-ip
}
