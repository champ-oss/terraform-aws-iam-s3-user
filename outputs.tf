output "s3_access_key_id" {
  value       = var.enabled ? aws_iam_access_key.this[0].id : ""
  description = "The access key ID for the S3 bucket"
}

output "s3_secret_access_key" {
  value       = var.enabled ? aws_iam_access_key.this[0].secret : ""
  description = "The secret access key for the S3 bucket"
  sensitive   = true
}

output "s3_bucket" {
  value       = var.enabled ? module.s3.bucket : ""
  description = "The name of the S3 bucket"
}
