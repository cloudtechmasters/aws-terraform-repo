resource "aws_macie2_account" "macie_rgp" {
  finding_publishing_frequency = var.finding_publishing_frequency
  status                       = var.status_macie_job
}


resource "aws_macie2_classification_job" "macie_rgp_job" {
  job_type = var.macie_job_type
  name     = "maice_s3_bucket"
  schedule_frequency {
    #for_each = lookup(each.value, "schedule_frequency", null) != null ? [1] : []

      daily_schedule   = "true"
      #weekly_schedule  = lookup(schedule_frequency.value, "weekly_schedule", null)
      #monthly_schedule = lookup(schedule_frequency.value, "monthly_schedule", null)
  
  }

  s3_job_definition {
    bucket_definitions {
      account_id = var.account_id_own
      buckets    = var.bucket_list
    }
  }
  
  depends_on = [aws_macie2_account.macie_rgp]
}