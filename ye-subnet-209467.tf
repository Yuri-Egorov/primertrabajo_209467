resource "aws_subnet" "ye_subnet_209467" {
  vpc_id     = aws_vpc.ye_vpc_209467.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "subred 10.0.1.0/24"
  }
}