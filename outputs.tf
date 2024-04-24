#----------------------------------------------------------------------------
# Outputs
#----------------------------------------------------------------------------

output "vpc_id" {
  description   = "The ID of the VPC"
  value         = module.vpc_mod.id
}

output "arn" {
  description   = "Amazon Resource Name (ARN) of VPC"
  value         = module.vpc_mod.arn
}

output "iam_role_name" {
  description = "value of the IAM role name"
  value       = module.iam_role_s3_read_only.iam_role_name
}

output "iam_role_arn" {
  description = "value of the IAM role ARN"
  value       = module.iam_role_s3_read_only.iam_role_arn
}