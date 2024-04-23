# ------------------------------------------------------------------------------
# Outputs
# ------------------------------------------------------------------------------

output "id" {
  value = aws_vpc.vpc_id.id
}

output "arn" {
  value = aws_vpc.vpc_id.arn
}

output "cidr_block" {
  value = aws_vpc.vpc_id.cidr_block
}