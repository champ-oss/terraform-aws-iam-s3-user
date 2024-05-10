resource "aws_iam_user_policy" "this" {
  name   = "${var.git}-${random_string.this.result}"
  user   = aws_iam_user.this.name
  policy = data.aws_iam_policy_document.this.json
}


