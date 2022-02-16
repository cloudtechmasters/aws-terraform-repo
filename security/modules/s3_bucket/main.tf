resource "aws_s3_bucket" "s3_bucket_amz_security" {
  bucket = var.s3_public_bucket_name
 # acl = var.bucket_acl
 # region = var.region_name
  tags = var.tags 
}
resource "aws_kms_key" "encrypt_mykey" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = var.key_retention
}

resource "aws_s3_bucket_server_side_encryption_configuration" "s3_encryption_rgp" {
  bucket = aws_s3_bucket.s3_bucket_amz_security.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.encrypt_mykey.arn
      sse_algorithm     = "aws:kms"
    }
  }
}
