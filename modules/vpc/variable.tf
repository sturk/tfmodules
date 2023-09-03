# Common variables for all modules and templates
#######################
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
variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}
# VPC specific variables
#######################
variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
}

variable "vpc_tags" {
  description = "A map of tags to add to the VPC"
  type        = map(string)
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

