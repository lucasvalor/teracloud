data "aws_ami" "latest_ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-disco-19.04-amd64-server-*"]
  }

  filter {
      name   = "virtualization-type"
      values = ["hvm"]
  }
}

resource "aws_instance" "MyEC2Instance-1" {
  ami             = "${data.aws_ami.latest_ubuntu.id}"
  instance_type   = "${var.ec2_type}"
  key_name        = "${aws_key_pair.EC2_key_pair.key_name}"
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

  tags {
    Name = "MyEC2SG"
  }
}

resource "aws_key_pair" "EC2_key_pair" {
  key_name   = "EC2-Key"
  public_key = "${var.public_key}"
}
