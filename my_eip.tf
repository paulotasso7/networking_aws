resource "aws_eip" "vpc_eip" {
  public_ipv4_pool = "amazon"
  vpc              = true
  tags             = {}
  timeouts {}
}

resource "aws_eip_association" "vpc_eip_assoc" {
  instance_id   = aws_instance.paulo-ec2-teste.id
  allocation_id = aws_eip.vpc_eip.id
}
