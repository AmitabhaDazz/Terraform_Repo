provider "aws" {
    region = "us-east-1"
    access_key = "AK"
    secret_key = "SK"
}
resource "aws_security_group" "ad-sg" {
    name = "ad-sg"
    ingress {
        from_port = "443"
        to_port = "443"
        protocol = "tcp"
        cidr_blocks = [var.ipadd]
    }
     ingress {
        from_port = "80"
        to_port = "80"
        protocol = "tcp"
        cidr_blocks = [var.ipadd]
    }
}
output op1 {
    value = aws_security_group.ad-sg
}
