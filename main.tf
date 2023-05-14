provider "aws" {
  region = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "Udacity_T2" {
  count = "4"
  ami = "ami-0bfbb74cdfd99d136"
  instance_type = "t2.micro"
  tags = {
    Name = "Udacity T2"
  }
}
