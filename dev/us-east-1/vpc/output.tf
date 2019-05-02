output "ec2-public-ip" {
  description = "This is the public IP address of the EC2 instance"
  value       = "${aws_instance.MyEC2Instance-1.public_ip}"
}
