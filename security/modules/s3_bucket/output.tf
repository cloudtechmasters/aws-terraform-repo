output "s3_bucket_id" {
  description = "s3 bucket id"
  value = aws_s3_bucket.s3_bucket_amz_security.id
}

output "s3_region" {
  description = "s3 region"
  value = aws_s3_bucket.s3_bucket_amz_security.region
}

