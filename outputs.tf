# VPC
output "vpc_id" {
    value = aws_vpc.my-aws_vpc.id
    description = "VPC id of my-aws-vpc "
  
}

# Public Subnet
output "my-pub-subnet-id" {
    value = aws_subnet.my-pub-subnet.id
    description = "Subnet ID of my-pub-subnet "
  
}

# Private Subnet
output "my-pri-subnet-id" {
    value = aws_subnet.my-pri-subnet.id
    description = "Subnet ID of my-pri-subnet "
  
}