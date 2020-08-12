resource "aws_instance" "awsec2" {
  ami           = data.aws_ami.ad_ami.id
  instance_type = lookup(var.ig_type, "dev")
  tags          = local.tagg
  count         = 1
  key_name      = "test"
  provisioner "remote-exec" {

    inline = [
      "sudo amazon-linux-extras install -y nginx1.12",
      "sudo systemctl start nginx"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("./test.pem")
      host        = self.public_ip
    }
  }

}
locals {
  tagg = {
    "name" = "tets"
    "env"  = "prod"
  }
}
