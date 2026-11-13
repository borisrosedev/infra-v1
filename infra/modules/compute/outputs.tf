output "aws_instance_ip_public" {
  value = aws_instance.webserver.public_ip
}
