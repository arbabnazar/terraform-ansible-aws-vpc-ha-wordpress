// Module specific variables
variable "hosted_zone_id" {
  description = "ID for the domain hosted zone"
}

variable "domain_name" {
  description = "name of the domain where record(s) need to create"
}

variable "elb_address" {
  description = "ELB address for which record need to create"
}

variable "elb_zone_id" {
  description = "Zone id for ELB"
}