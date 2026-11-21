provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "gitops_web" {
  ami                         = "ami-097e04d8dae631ee5"
  instance_type                = "t3.micro"
  subnet_id                    = "subnet-0dd16ffb7b5cf3b46"
  vpc_security_group_ids       = ["sg-0f4a589b9fe3e023d"]
  associate_public_ip_address   = true

  tags = {
    Name        = "capstone-project-18-gitops"
    Project     = "Project-18"
    Environment = "GitOps"
  }
}
