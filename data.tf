data "aws_caller_identity" "current" {}

# ------------------------------------------------------------------------------
# IAM Policy for S3 Get Read Only Access
# ------------------------------------------------------------------------------

data "aws_iam_policy_document" "lambda_s3_read_only" {
  statement {
    sid = "AllowS3GetObject"
    actions = [
      "s3:GetObject"
    ]
    resources = [
        "*"
    ]
  }
}