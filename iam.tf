# ------------------------------------------------------------------------------
# IAM role and policy for S3 read only access
# ------------------------------------------------------------------------------

module "iam_role_s3_read_only" {
  source                  = "./modules/iam-assumable-role"
  role_name               = format("iam-%s-%s", var.env_code, "s3-read-only-role")
  create_role             = true
  create_instance_profile = false
  aws_managed_policies    = ["arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"]
  trusted_role_services   = ["lambda.amazonaws.com"]
  tags = merge(
    { Name = format("iam-%s-%s", var.env_code, "s3-read-only-role") },
    local.common_tags
  )
}

resource "aws_iam_role_policy" "s3_read_only_inline_policy" {
  name   = format("iam-%s-%s", var.env_code, "s3-read-only-policy")
  role   = module.iam_role_s3_read_only.iam_role_name
  policy = data.aws_iam_policy_document.lambda_s3_read_only.json
}
