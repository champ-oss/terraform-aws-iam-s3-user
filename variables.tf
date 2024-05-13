variable "git" {
  description = "Identifier to be used on all resources"
  type        = string
}

variable "tags" {
  description = "https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"
  type        = map(string)
  default     = {}
}

variable "protect" {
  description = "Enables deletion protection on eligible resources"
  type        = bool
  default     = true
}

variable "force_destroy" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user#force_destroy"
  type        = bool
  default     = false
}

variable "aws_cross_account_id_arns" {
  description = "cross account id arns for read only policy to s3"
  type        = list(string)
  default     = []
}

variable "name" {
  type        = string
  description = "Name used to identify the bucket"
  default     = "s3"
}
