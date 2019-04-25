variable "region" {
  description = "The AWS region we are going to use"
  default     = "us-east-1"
}

variable "ec2_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "ami-0de53d8956e8dcf80"
}
