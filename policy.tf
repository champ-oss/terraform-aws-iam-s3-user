resource "aws_iam_user_policy" "this" {
  count  = var.enabled ? 1 : 0
  name   = "${var.git}-${random_string.this[0].result}"
  user   = aws_iam_user.this[0].name
  policy = data.aws_iam_policy_document.this[0].json
}
