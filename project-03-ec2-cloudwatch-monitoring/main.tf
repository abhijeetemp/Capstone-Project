provider "aws" {
  region = "eu-north-1"
}

resource "aws_security_group" "monitoring_sg" {
  name        = "capstone-monitoring-sg"
  description = "Security group for CPU monitoring capstone"
  vpc_id      = "vpc-0956bd4896225a585"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "capstone-monitoring-sg"
  }
}

resource "aws_instance" "monitoring" {
  ami                         = "ami-097e04d8dae631ee5"
  instance_type               = "t3.micro"
  subnet_id                   = "subnet-0dd16ffb7b5cf3b46"
  vpc_security_group_ids      = [aws_security_group.monitoring_sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF_USER
    #!/bin/bash
    dnf install -y stress-ng
    stress-ng --cpu 2 --timeout 10m
  EOF_USER

  tags = {
    Name = "capstone-cpu-monitoring"
  }
}

resource "aws_cloudwatch_metric_alarm" "cpu_alarm" {
  alarm_name          = "capstone-high-cpu-alarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 60
  statistic           = "Average"
  threshold           = 70
  alarm_description   = "Alarm when EC2 CPU exceeds 70 percent"
  treat_missing_data  = "notBreaching"

  dimensions = {
    InstanceId = aws_instance.monitoring.id
  }

  tags = {
    Name = "capstone-cpu-alarm"
  }
}
