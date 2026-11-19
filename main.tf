provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "web" {
  ami           = "ami-097e04d8dae631ee5"
  instance_type = "t3.micro"

  tags = {
    Name = "capstone-web-server"
  }
}
