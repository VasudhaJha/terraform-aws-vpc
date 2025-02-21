variable "vpc_cidr" {
  description = "CIDR block of the VPC"
  type = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type = string
  default = "MyVPC"
}

variable "public_subnet_cidr" {
  description = "CIDR block of the public subnet"
  type = string
}

variable "public_subnet_az" {
  description = "Availability Zone for the public subnet"
  type        = string
}

variable "public_subnet_name" {
  description = "Name of the VPC public subnet"
  type = string
  default = "Public Subnet"
}

variable "private_subnet_cidr" {
  description = "CIDR block of private subnet"
  type = string
}

variable "private_subnet_name" {
  description = "Name of the private subnet"
  type = string
  default = "Private Subnet"
}

variable "private_subnet_az" {
  description = "Availability Zone for the private subnet"
  type        = string
}

variable "igw_name" {
  description = "Name of the internet gateway"
  type = string
  default = "Internet Gateway"
}

variable "nat_gw_name" {
  description = "Name of the NAT gateway"
  type = string
  default = "NAT Gateway"
}

variable "public_rt_name" {
  description = "Name of the public route table"
  type = string
  default = "Public Route Table"
}

variable "private_rt_name" {
  description = "Name of the private route table"
  type = string
  default = "Private Route Table"
}