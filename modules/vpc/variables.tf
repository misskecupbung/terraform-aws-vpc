# ------------------------------------------------------------------------------
# Variables
# ------------------------------------------------------------------------------

variable "cidr_block" {
  description = "The IPv4 CIDR block for the VPC."
  type        = string
  default     = ""
}

variable "enable_dns_hostnames" {
  description = "A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false."
  type = bool
  default = false

}

variable "enable_dns_support" {
  description = "A boolean flag to enable/disable DNS support in the VPC. Defaults to true."
  type = bool
  default = true
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type = map(string)
}