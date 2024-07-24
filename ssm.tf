resource "aws_ssm_parameter" "this" {
  count       = var.enabled ? 1 : 0
  name        = "/${var.git}-${var.name}/s3-iam-access-key/${aws_iam_access_key.this[0].id}/id"
  description = "s3 iam access key id"
  type        = "SecureString"
  value       = aws_iam_access_key.this[0].secret
  tags = merge({
    s3_bucket = module.s3[0].bucket
  }, local.tags, var.tags)

  lifecycle {
    create_before_destroy = true
  }
}
