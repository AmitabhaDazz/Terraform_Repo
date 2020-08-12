variable "reg" {
  type = map
  default = {
    "asia" = "ap-south-1"
    "us"   = "us-east-1"
  }
}

variable "sk" {
  default = "dsdsds"
}

variable "ak" {
  default = "dsdsds"
}


variable "ami" {
  type    = list
  default = ["sa", "sasa"]
}

variable "ig_type" {
  type = map
  default = {
    "dev"  = "t2.micro"
    "prod" = "t2.small"
  }
}
