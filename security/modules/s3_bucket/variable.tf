variable "s3_public_bucket_name" {
  description = "this is the name for security bucket"
  type = string
  default = "s3_public_bucket_rgp_993_ap_southeast_1"
}

variable "bucket_acl" {
  description = " bucket acl"
  type = string
  default = "public"  
}

variable "region_name" {
  description = "bucket region"
  type =string
  default = "ap-southeast-1"
}

variable "tags" {
  description = "tags for the aws sceruity setup"
  type = map(string)
  default = {}
  
}

variable "bucket_key_enabled" {
  type        = bool
  default     = false
  description = <<-EOT
  Set this to true to use Amazon S3 Bucket Keys for SSE-KMS, which reduce the cost of AWS KMS requests.
  For more information, see: https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-key.html
  EOT
}
variable "sse_algorithm" {
  type        = string
  default     = "AES256"
  description = "The server-side encryption algorithm to use. Valid values are `AES256` and `aws:kms`"
}

variable "kms_master_key_arn" {
  type        = string
  default     = ""
  description = "The AWS KMS master key ARN used for the `SSE-KMS` encryption. This can only be used when you set the value of `sse_algorithm` as `aws:kms`. The default aws/s3 AWS KMS master key is used if this element is absent while the `sse_algorithm` is `aws:kms`"
}

variable "key_retention" {
  type = number
  default = 10
}