provider "aws" {
  region     = "ap-southeast-1"
  shared_credentials_file = "C:\\Users\\rakesh\\.aws\\credentials"
  profile                 = "default"
}

terraform {
  backend "s3" {
    bucket = "terraform-practice-rakpatil"
    key    = "terraform-rgp-aws-security-e2e//terraform.tfstate"
    region = "ap-southeast-1"
  }
}