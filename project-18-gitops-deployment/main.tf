provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "gitops_web" {
  ami           = "ami-097e04d8dae631ee5"
  instance_type = "t3.micro"

  tags = {
    Name        = "capstone-project-18-gitops"
    Project     = "Project-18"
    Environment = "GitOps"
  }
}
