# The VPC resource
resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block

  tags = {
    "Name" = "vpc_module"
  }
}

# Subnets
resource "aws_subnet" "subnet" {
  for_each          = var.subnets
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone

  tags = {
    Name = "subnet-${each.key}"
  }
}