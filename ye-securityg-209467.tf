provider "aws" {
    region = "us-east-1"
    profile = "default"
  }

resource "aws_security_group" "permitir_ssh" {
  name        = "ye_permitirssh_209467"
    vpc_id      = aws_vpc.ye_vpc_209467.id

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    }

  tags = {
    Name = "ye_permitirssh_209467"
  }
}