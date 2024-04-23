# ------------------------------------------------------------------------------
# VPC
# ------------------------------------------------------------------------------

module "vpc_mod" {
  source      = "./modules/vpc"
  cidr_block  = var.cidr_block
  tags = merge(
    { Name = format("vpc-%s-%s", var.env_code, "terraform") },
    local.common_tags
  )
}