data "aws_iam_policy_document" "this" {
  count = var.enabled ? 1 : 0
  statement {
    effect = "Allow"

    actions = [
      "s3:Get*",
      "s3:List*"
    ]

    resources = [
      "${module.s3[0].arn}/*",
      module.s3[0].arn
    ]
  }
}
