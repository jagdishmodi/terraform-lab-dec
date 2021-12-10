resource "aws_instance" "foo" {
  ami           = "ami-052cef05d01020f1d"
  instance_type = "t2.micro"
  key_name = "terraform-key"
 
tags = {
    Name = "ec2-provision-${terraform.workspace}"
    env = "Proc"
  }
provisioner "file" {
  source     = "./key-pair/terraform-key.pem"
  destination = "/tmp/ada"
connection {
    type = "ssh"
    host = self.public_ip
    user = "ec2-user"
    private_key = file("./key-pair/terraform-key.pem")
} 
}
}


