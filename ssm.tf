resource "aws_ssm_parameter" "this" {
  name        = "/${var.git}/s3-iam-access-key/${aws_iam_access_key.this.id}/id"
  description = "s3 iam access key id"
  type        = "SecureString"
  value       = aws_iam_access_key.this.secret
  tags        = merge(local.tags, var.tags)

  lifecycle {
    create_before_destroy = true
  }
}
