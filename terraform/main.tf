provider "aws" {
  region  = "us-east-1"
  profile = "terraform-user" # or remove if using env vars
}

# VPC
resource "aws_vpc" "crc_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "crc-vpc"
  }
}

# Internet Gateway
resource "aws_internet_gateway" "crc_igw" {
  vpc_id = aws_vpc.crc_vpc.id

  tags = {
    Name = "crc-igw"
  }
}

# Public Subnet 1a
resource "aws_subnet" "public_1a" {
  vpc_id            = aws_vpc.crc_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-1a"
  }
}

# Public Subnet 1b
resource "aws_subnet" "public_1b" {
  vpc_id            = aws_vpc.crc_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-1b"
  }
}

# Private Subnet 1a
resource "aws_subnet" "private_1a" {
  vpc_id            = aws_vpc.crc_vpc.id
  cidr_block        = "10.0.100.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "private-subnet-1a"
  }
}

# Private Subnet 1b
resource "aws_subnet" "private_1b" {
  vpc_id            = aws_vpc.crc_vpc.id
  cidr_block        = "10.0.101.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "private-subnet-1b"
  }
}

# Public Route Table
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.crc_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.crc_igw.id
  }

  tags = {
    Name = "public-rt"
  }
}

# Associate Public Subnets with Route Table
resource "aws_route_table_association" "public_1a_assoc" {
  subnet_id      = aws_subnet.public_1a.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "public_1b_assoc" {
  subnet_id      = aws_subnet.public_1b.id
  route_table_id = aws_route_table.public_rt.id
}

