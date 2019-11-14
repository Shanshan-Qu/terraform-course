resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  subnet_id     = "subnet-90752ef7"
  security_groups = ["${aws_security_group.aws_security_group.id}"]
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo ${aws_instance.example.private_ip} >> private_ips.txt"
  }
}

output "ip" {
  value = aws_instance.example.private_ip
}

