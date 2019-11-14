resource "aws_security_group" "aws_security_group" {
  vpc_id      = "${var.vpc_id}"
  name        = "${var.ec2_name}-sg"
  description = "security group for ecs"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 0
    to_port   = 0
    protocol  = "tcp"

    #security_groups = ["${aws_security_group.<securitygroup>.id}"]
    cidr_blocks = ["130.216.0.0/16"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["130.216.0.0/16"]
  }

}
