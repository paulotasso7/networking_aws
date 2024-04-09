
/*# Backend must remain commented until the Bucket
 and the DynamoDB table are created. 
 After the creation you can uncomment it,
 run "terraform init" and then "terraform apply" */

resource "aws_vpc" "paulo_vpc" {
  cidr_block                       = var.vpc_cidr
  instance_tenancy                 = "default"
  assign_generated_ipv6_cidr_block = false
  enable_dns_hostnames             = true
  enable_dns_support               = true
  tags = {
    Name = "paulo_vpc"
  }

}


resource "aws_internet_gateway" "internet_gw" {
  vpc_id = aws_vpc.paulo_vpc.id
  tags = {
    name = "vpc-igw"
  }

}

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_security_group.aws_sg_east_1.id
  subnet_id     = aws_subnet.private_subnet.id
  tags = {
    name = "nat-gw"
  }

}
