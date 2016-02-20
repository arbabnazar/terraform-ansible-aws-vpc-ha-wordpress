// Module specific variables
variable "name" {
	default = "test"
}

variable "environment" {
  default = "test"
}

variable "vpc_id" {
  description = "The VPC this security group will go in"
}

variable "security_group_id" {
  description = "The source CIDR block to allow traffic from"
}