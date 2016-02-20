variable "name" {
	default = "test"
}

variable "environment" {
  default = "test"
}

variable "enable_dns_support" {
  description = "should be true if you want to use private DNS within the VPC"
  default = false
}
variable "enable_dns_hostnames" {
  description = "should be true if you want to use private hostname within the VPC"
  default = false
}

variable "vpc_cidr" {
  description = "CIDR for VPC"
  default     = "10.100.0.0/16"
}

variable "public_subnets_cidr" {
	description = "CIDR for public subnets"
	default = "10.100.10.0/24,10.100.20.0/24"
}

variable "private_subnets_cidr" {
	description = "CIDR for private subnets"
	default = "10.100.30.0/24,10.100.40.0/24"
}

variable "azs" {
	description = "AZ for subnets"
}

variable "map_public_ip_on_launch" {
  default = true
}



