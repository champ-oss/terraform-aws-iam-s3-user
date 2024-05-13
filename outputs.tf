output "s3_access_key_id" {
  value       = aws_iam_access_key.this.id
  description = "The access key ID for the S3 bucket"
}

output "s3_secret_access_key" {
  value       = aws_iam_access_key.this.secret
  description = "The secret access key for the S3 bucket"
  sensitive   = true
}
