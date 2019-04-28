variable "region" {
  description = "The AWS region we are going to use"
  default     = "us-east-1"
}

variable "ec2_type" {
  description = "Define the machine type"
  default     = "t2.micro"
}

variable "ami" {
  description = "Specify the image to use"
  default     = "ami-0de53d8956e8dcf80"
}

variable "public_key" {
  description = "The public key to SSH EC2 instance"
}
