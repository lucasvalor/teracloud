resource "aws_instance" "MyEC2Instance-1" {
  ami           = "ami-0de53d8956e8dcf80"
  instance_type = "t2.micro"
}
