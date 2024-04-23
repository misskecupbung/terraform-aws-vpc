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