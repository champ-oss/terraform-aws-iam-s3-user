module "s3" {
  source                    = "github.com/champ-oss/terraform-aws-s3.git?ref=v1.0.49-2984d72"
  enabled                   = var.enabled ? true : false
  git                       = substr(var.git, 0, 60)
  name                      = var.name
  aws_cross_account_id_arns = var.aws_cross_account_id_arns
  protect                   = var.protect
  tags                      = merge(local.tags, var.tags)
}
