resource "aws_iam_user" "this" {
  count         = var.enabled ? 1 : 0
  name          = substr("${var.git}-${random_string.this[0].result}", 0, 63) # 63 char limit
  tags          = merge(local.tags, var.tags)
  force_destroy = var.force_destroy
}
