provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Udacity_T2" {
  count = "4"
  ami = "ami-0bfbb74cdfd99d136"
  instance_type = "t2.micro"
  tags = {
    Name = "Udacity T2"
  }
}
