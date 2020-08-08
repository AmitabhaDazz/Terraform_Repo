provider "aws" {
    region = "us-east-1"
    access_key = "AK"
    secret_key = "SK"
}

resource "aws_eip" "ad-ip" {
    vpc = true

}
resource "aws_s3_bucket" "mys3" {
    bucket = "dsdsdfdsfdssfdsfdssrytuy"
}
output ops3{
    value = aws_s3_bucket.mys3.bucket_domain_name
}
output opip {
    value = aws_eip.ad-ip.public_ip
}
