# Aviatrix Controller AUTH VARS
variable "controller_ip" {
  type    = string
  default = ""
}

variable "username" {
  type    = string
  default = ""
}

variable "password" {
  type    = string
  default = ""
}

variable "region" {
  description = "The AWS region to deploy this module in"
  type        = string
}

variable "transit_cidr" {
  description = "The CIDR range to be used for the VPC"
  type        = string
}

variable "account" {
  description = "The AWS account name, as known by the Aviatrix controller"
  type        = string
}

variable "spoke1_cidr" {
  description = "The CIDR range to be used for the VPC"
  type        = string
}

variable "spoke2_cidr" {
  description = "The CIDR range to be used for the VPC"
  type        = string
}

variable "spoke3_cidr" {
  description = "The CIDR range to be used for the VPC"
  type        = string
}
