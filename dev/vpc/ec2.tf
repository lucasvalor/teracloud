resource "aws_instance" "MyEC2Instance-1" {
  ami             = "${var.ami}"
  instance_type   = "${var.ec2_type}"
  key_name        = "EC2-us-east-1"
  security_groups = ["${aws_security_group.allow_ssh.name}"]

  tags {
    Name = "MyEC2"
  }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "This allows SSH connections"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
