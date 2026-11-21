provider "aws" {
  region = "eu-north-1"
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

resource "aws_security_group" "web" {
  name        = "capstone-project-20-web-sg"
  description = "Allow HTTP traffic to web servers"
  vpc_id      = "vpc-0956bd4896225a585"

  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.alb.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "alb" {
  name        = "capstone-project-20-alb-sg"
  description = "Allow HTTP access to load balancer"
  vpc_id      = "vpc-0956bd4896225a585"

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
  count                  = 2
  ami                    = data.aws_ami.amazon_linux.id
  instance_type           = "t3.micro"
  subnet_id               = count.index == 0 ? "subnet-0dd16ffb7b5cf3b46" : "subnet-003eb0d78698cf3e1"
  vpc_security_group_ids  = [aws_security_group.web.id]
  associate_public_ip_address = true

  user_data = <<-USERDATA
    #!/bin/bash
    dnf install -y httpd
    systemctl enable httpd
    systemctl start httpd
    echo "<h1>Capstone Project 20 - Web Server ${count.index + 1}</h1>" > /var/www/html/index.html
  USERDATA

  tags = {
    Name = "capstone-project-20-web-${count.index + 1}"
  }
}

resource "aws_lb" "app" {
  name               = "capstone-project-20-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb.id]
  subnets            = ["subnet-0dd16ffb7b5cf3b46", "subnet-003eb0d78698cf3e1"]

  tags = {
    Name = "capstone-project-20-alb"
  }
}

resource "aws_lb_target_group" "web" {
  name     = "capstone-project-20-tg"
  port     = 80
  protocol  = "HTTP"
  vpc_id   = "vpc-0956bd4896225a585"
  target_type = "instance"

  health_check {
    path                = "/"
    protocol            = "HTTP"
    matcher             = "200"
    interval            = 30
    healthy_threshold   = 2
    unhealthy_threshold = 3
  }
}

resource "aws_lb_target_group_attachment" "web" {
  count            = 2
  target_group_arn = aws_lb_target_group.web.arn
  target_id        = aws_instance.web[count.index].id
  port             = 80
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.app.arn
  port              = 80
  protocol           = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.web.arn
  }
}
