variable "trusted_role_actions" {
  description = "Actions of STS"
  type        = list(string)
  default     = ["sts:AssumeRole"]
}

variable "trusted_role_arns" {
  description = "ARNs of AWS entities who can assume these roles"
  type        = list(string)
  default     = []
}

variable "trusted_role_services" {
  description = "AWS Services that can assume these roles"
  type        = list(string)
  default     = []
}

variable "max_session_duration" {
  description = "Maximum CLI/API session duration in seconds between 3600 and 43200"
  type        = number
  default     = 3600
}

variable "create_role" {
  description = "Whether to create a role"
  type        = bool
  default     = false
}

variable "create_instance_profile" {
  description = "Whether to create an instance profile"
  type        = bool
  default     = false
}

variable "role_name" {
  description = "IAM role name"
  type        = string
  default     = ""
}

variable "role_permissions_boundary_arn" {
  description = "Permissions boundary ARN to use for IAM role"
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to add to IAM role resources"
  type        = map(string)
  default     = {}
}

variable "aws_managed_policies" {
  description = "List of ARNs of AWS Managed IAM policies to attach to IAM role"
  type        = list(string)
  default     = []
}

variable "custom_policies" {
  description = "List of ARNs of custom IAM policies to attach to IAM role"
  type        = string
  default     = null
}

variable "role_trust_policy" {
  description = "A custom role trust policy"
  type        = string
  default     = ""
}

variable "number_of_aws_managed_policies" {
  description = "Number of IAM policies to attach to IAM role"
  type        = number
  default     = null
}

variable "force_detach_policies" {
  description = "Whether policies should be detached from this role when destroying"
  type        = bool
  default     = false
}

variable "role_description" {
  description = "IAM Role description"
  type        = string
  default     = ""
}
