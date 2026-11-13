data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }
  owners = ["099720109477"] # Canonical
}

resource "aws_key_pair" "webserver_key_pair" {
  public_key = var.instance_public_key
  key_name   = var.instance_public_key_name
}

resource "aws_instance" "webserver" {
  subnet_id                   = var.subnet_id
  key_name                    = aws_key_pair.webserver_key_pair.key_name
  associate_public_ip_address = var.has_public_ip
  ami                         = data.aws_ami.ubuntu.id //os linux
  vpc_security_group_ids      = [var.sg_id]
  // il faut un pare-feu absolument
  tags = {
    "Name" = var.instance_name
  }
}
