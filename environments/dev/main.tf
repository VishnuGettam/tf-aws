
# dev webserver 
resource "aws_instance" "webserver" {
 
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [var.sg_webaccess]

  connection {
    type = "ssh"
    port = 22
    user = "ec2-user"
    private_key =  file(var.ssh_key_path)
    host = self.public_ip
  }

  tags = {
    Name = "dev_webserver"
  }
}