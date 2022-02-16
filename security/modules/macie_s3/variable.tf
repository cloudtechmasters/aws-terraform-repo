variable "finding_publishing_frequency" {
    description = "frequency for finding and publishing"
    type = string
    default = "FIFTEEN_MINUTES"
}

variable "status_macie_job" {
    description = "status for maice job"
    type = string
    default = "ENABLED"
}

variable "macie_job_type" {
  description = "maice job type"
  type = string
  default = "SCHEDULED"
}

variable "schedule_frequency_maice" {
  description = "scheduled frencency"
  type = string
  default = "daily"
}

variable "account_id_own" {
  description = "account id"
  type = number
  default = "613679500838"
}

variable "bucket_list" {
    description = "s3 bucket list "
    type = list(string)
    default = ["s3-public-bucket-rgp-993-ap-southeast-1"]
}
