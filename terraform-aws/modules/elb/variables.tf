// Module specific variables
variable "name" {
	default = "test"
}

variable "environment" {
  default = "test"
}

variable "availability_zones" {
  description = "The VPC this security group will go in"
}

variable "instance_id" {
	description = "instance(s) that need to add to the ELB"
}

variable "subnets" {
  description = "Subnets for ELB"
}

variable "security_groups" {
  description = "Security groups for elb"
}

variable "source_cidr_block" {
  description = "The source CIDR block to allow traffic from"
  default = "0.0.0.0/0"
}