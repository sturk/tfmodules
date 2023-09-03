provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "default_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags merge(
    var.vpc_tags,
    {
      Name = "default_vpc"
    },
    var.tags
  )
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.default_vpc.id
  cidr_block              = "10.10.0.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.default_vpc.id
  cidr_block = "10.20.0.0/24"

  tags = {
    Name = "private_subnet"
  }
}

resource "aws_internet_gateway" "default_igw" {
  vpc_id = aws_vpc.default_vpc.id

  tags = {
    Name = "default_igw"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.default_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default_igw.id
  }

  tags = {
    Name = "public_route_table"
  }
}

resource "aws_route_table_association" "public_route_table_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_route_table.id

  tags = merge(
    var.public_route_table_association_tags,
    {
      Name = "public_route_table_association"
    },
    var.tags
  )
}
