data "aws_iam_policy_document" "assume_role" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = var.trusted_role_services
    }
  }
}

resource "aws_iam_role" "this" {
  count                 = var.create_role ? 1 : 0
  name                  = var.role_name
  max_session_duration  = var.max_session_duration
  description           = var.role_description
  force_detach_policies = var.force_detach_policies
  permissions_boundary  = var.role_permissions_boundary_arn
  assume_role_policy    = data.aws_iam_policy_document.assume_role.json
  managed_policy_arns   = var.aws_managed_policies
  tags                  = var.tags
}

resource "aws_iam_instance_profile" "this" {
  count = var.create_role && var.create_instance_profile ? 1 : 0
  name  = var.role_name
  role  = aws_iam_role.this[0].name
  tags  = var.tags
}
