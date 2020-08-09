provider "aws" {
    region = var.region
    access_key = var.access_id
    secret_key = var.secret_id
}

resource "aws_instance" "ad_ec2" {
    ami = var.adami
    instance_type = var.instance_type
}

resource "aws_elb" "bar" {
  name               = "foobar-terraform-elb"
  availability_zones = var.az[0]


  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

 
  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }

  instances                   = [aws_instance.ad_ec2.id]
  cross_zone_load_balancing   = true
  idle_timeout                = var.timeout
  connection_draining         = true
  connection_draining_timeout = var.timeout

  tags = {
    Name = "foobar-terraform-elb"
  }
}
