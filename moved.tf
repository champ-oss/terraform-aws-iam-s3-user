moved {
  from = data.aws_iam_policy_document.this
  to   = data.aws_iam_policy_document.this[0]
}

moved {
  from = aws_iam_access_key.this
  to   = aws_iam_access_key.this[0]
}

moved {
  from = random_string.this
  to   = random_string.this[0]
}

moved {
  from = aws_iam_user_policy.this
  to   = [aws_iam_user_policy.this[0]]
}

moved {
  from = aws_ssm_parameter.this
  to   = aws_ssm_parameter.this[0]
}

moved {
  from = aws_iam_user.this
  to   = aws_iam_user.this[0]
}
