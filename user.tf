resource "aws_iam_user" "this" {
  name          = substr("${var.git}-${random_string.this.result}", 0, 63) # 63 char limit
  tags          = merge(local.tags, var.tags)
  force_destroy = var.force_destroy
}
