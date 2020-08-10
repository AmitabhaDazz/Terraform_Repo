variable access_id {
    type = string
    default = "AI"
}
variable secret_id {
    type = string
    default = "AI"
}
variable ad_ami {
    type = string
    default = "ami-02354e95b39ca8dec"
}
variable instance_type {
    type = string
    default = "t2.micro"
}
locals {
    name= {
        dev = "prod"
        owner = "ad"
        
    }
}
