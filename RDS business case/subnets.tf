# Create VPC
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

 enable_dns_support   = true
 enable_dns_hostnames = true

  tags = {
    Name = "main"
  }
}

# Create Public Subnet 1
resource "aws_subnet" "public_subnet1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "public_subnet1"
  }
}

# Create Public Subnet 2
resource "aws_subnet" "public_subnet2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "public_subnet2"
  }
}
resource "aws_db_subnet_group" "rds_subnet_group_01" {
  subnet_ids = [aws_subnet.public_subnet1.id , aws_subnet.public_subnet2.id]
  tags = {
   Name ="rds_subnet_group_01"
  }
}
