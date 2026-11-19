provider "aws" {
  region = "eu-north-1"
}

resource "aws_security_group" "web_sg" {
  name        = "capstone-web-sg"
  description = "Allow SSH and HTTP"
  vpc_id      = "vpc-0956bd4896225a585"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
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

resource "aws_instance" "web" {
  ami                    = "ami-097e04d8dae631ee5"
  instance_type          = "t3.micro"
  subnet_id              = "subnet-0dd16ffb7b5cf3b46"
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  associate_public_ip_address = true

  user_data = <<-EOF2
#!/bin/bash
dnf update -y
dnf install -y httpd
systemctl enable httpd
systemctl start httpd

echo "<h1>Capstone Project 1 - Terraform Web Server</h1>" > /var/www/html/index.html
EOF2

  tags = {
    Name = "capstone-web-server"
  }
}
