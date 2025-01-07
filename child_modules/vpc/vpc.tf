resource "aws_vpc" "default" {
  cidr_block       = var.cidr_block_vpc

  tags = {
    Name = var.vpc_name
  }
}