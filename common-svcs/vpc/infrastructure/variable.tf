# common variables for all projects
variable "region" {
  description = "The AWS region to deploy to"
  type        = string
}
variables "account_id" {
  description = "The AWS account ID to deploy to"
  type        = string
}
variable "environment" {
  description = "The environment to deploy to"
  type        = string
}
variable "cost_center" {
  description = "The cost center for the project"
  type        = string
}
variable "business_unit" {
  description = "The business unit for the project"
  type        = string
}
# VPC specific variables
#######################
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
}

variable "public_subnet_tags" {
  description = "A map of tags to add to the public subnet"
  type        = map(string)
}

variable "private_subnet_tags" {
  description = "A map of tags to add to the private subnet"
  type        = map(string)
}

variable "igw_tags" {
  description = "A map of tags to add to the internet gateway"
  type        = map(string)
}

variable "public_route_table_tags" {
  description = "A map of tags to add to the public route table"
  type        = map(string)
}

variable "public_route_table_association_tags" {
  description = "A map of tags to add to the public route table association"
  type        = map(string)
}