resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.paulo_vpc.id
  cidr_block              = var.cidr_east-1a
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = "true"

}

resource "aws_subnet" "private_subnet" {
  vpc_id                  = aws_vpc.paulo_vpc.id
  cidr_block              = var.cidr_east-1b
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = "true"

}
