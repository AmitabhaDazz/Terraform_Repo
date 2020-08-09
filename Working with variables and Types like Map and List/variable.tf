variable "instance_type" {
    type = string
   default =   "t2.micro"
}
variable "access_id" {
    type = string
    default ="TEST"
}

variable "secret_id" {
    type = string
    default ="TEST"
}
variable "region" {
    type = string
    default ="us-east-1"
}

variable "adami" {
    type = string
    default =   "ami-02354e95b39ca8dec"
}
variable "az" {
    type = list
    default = ["us-east-1a","us-east-1b"]
}
variable "timeout" {
    default = 400
    type = number
}
