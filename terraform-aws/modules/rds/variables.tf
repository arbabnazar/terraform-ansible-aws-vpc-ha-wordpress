// Module specific variables
variable "name" {
  default = "test"
}

variable "environment" {
  default = "test"
}

variable "subnet_ids" {
  description = "Subnet id(s) for ELB"
}

variable "identifier" {
  default = "test-rds"
  description = "Identifier for your DB"
}

variable "security_group_id" {
  description = "Security Group you've created"
}

variable "storage" {
  default = "5"
  description = "Storage size in GB"
}

variable "engine" {
  default = "mysql"
  description = "Engine type, example values mysql, postgres"
}

variable "engine_version" {
  description = "Engine version"
  default = "5.6.22"
}

variable "multi_az" {
  description = "Multi-AZ or not"
  default = false
}

variable "instance_class" {
  default = "db.t2.micro"
  description = "Instance class"
}

variable "db_name" {
  default = "testdb"
  description = "db name"
}

variable "username" {
  default = "test"
  description = "User name"
}

variable "password" {
  description = "password, provide through your ENV variables"
}