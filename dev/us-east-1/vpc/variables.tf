variable "ec2_type" {
  description = "Define the machine type"
  default     = "t2.micro"
}

variable "public_key" {
  description = "The public key to SSH EC2 instance"
}
