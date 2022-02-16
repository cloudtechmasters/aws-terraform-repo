output "s3_bucket_id"  {
  description = "s3 bucket name"
  value = module.s3_bucket_amz_security.s3_bucket_id
}

output "s3_bucket_region"  {
  description = "s3 bucket region"
  value = module.s3_bucket_amz_security.s3_region
}

output "macie_op" {
  description = "macie id"
  value = module.macie_rgp.macie_op
    
  }