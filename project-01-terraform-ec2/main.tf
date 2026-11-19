provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "web" {
  ami           = "ami-097e04d8dae631ee5"
  instance_type = "t3.micro"

  subnet_id = "subnet-0dd16ffb7b5cf3b46"

  tags = {
    Name = "capstone-web-server"
  }
}
