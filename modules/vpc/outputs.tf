# ------------------------------------------------------------------------------
# Outputs
# ------------------------------------------------------------------------------

output "id" {
  description = "The ID of the VPC"
  value       = aws_vpc.vpc_id.id
}

output "arn" {
  description = "Amazon Resource Name (ARN) of VPC"
  value       = aws_vpc.vpc_id.arn
}

output "cidr_block" {
  description = "The IPv4 CIDR block for the VPC."
  value       = aws_vpc.vpc_id.cidr_block
}