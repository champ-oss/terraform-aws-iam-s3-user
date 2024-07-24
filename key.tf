resource "aws_iam_access_key" "this" {
  count = var.enabled ? 1 : 0
  user  = aws_iam_user.this[0].name
}
