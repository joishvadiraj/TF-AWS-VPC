#VPC Creation
resource "aws_vpc" "my-aws_vpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support = true
    tags = {
      Name = "my-aws-vpc"
    }
  
}



# Public Subnet Creation
resource "aws_subnet" "my-pub-subnet" {
    cidr_block = "10.0.1.0/24"
    vpc_id = aws_vpc.my-aws_vpc.id
    tags = {
      Name = "my-pub-subnet"
    }
  
}


# Private Subnet Creation
resource "aws_subnet" "my-pri-subnet" {
    cidr_block = "10.0.2.0/24"
    vpc_id = aws_vpc.my-aws_vpc.id
    tags = {
      Name = "my-pri-subnet"
    }
  
}

