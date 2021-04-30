resource "aws_vpc" "ye_vpc_209467" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_internet_gateway" "ye_igw_209467" {
  vpc_id = aws_vpc.ye_vpc_209467.id
  
  tags = {
    Name = "salidainet"
  }
}

resource "aws_default_route_table" "ye_routetable_209467" {
  default_route_table_id = aws_vpc.ye_vpc_209467.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ye_igw_209467.id
  }

   tags = {
    Name = "routetable"
  }
}