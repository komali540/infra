provider "aws" {
region = "us-east-1"
}
resource "aws_instance" "three" {
  subnet_id     = aws_subnet.two.id
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  tags = {
    Name = "dev-server"
  }
}
