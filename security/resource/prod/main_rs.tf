module "s3_bucket_amz_security" {
  source = "..\\..\\modules\\s3_bucket"
  s3_public_bucket_name = var.s3_public_bucket_name
  bucket_acl = var.bucket_acl
  region_name = var.region_name
  tags = var.tags

}

module "macie_rgp" {
  source = "..\\..\\modules\\macie_s3"
  finding_publishing_frequency = var.finding_publishing_frequency 
  status_macie_job =  var.status_macie_job
  depends_on = [
    module.s3_bucket_amz_security
  ]
}