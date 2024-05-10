data "aws_iam_policy_document" "this" {
  statement {
    effect = "Allow"

    actions = [
      "s3:Get*",
      "s3:List*"
    ]

    resources = [
      "${module.s3.arn}/*",
      module.s3.arn
    ]
  }
}