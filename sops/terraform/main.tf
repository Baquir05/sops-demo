provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "sample_bucket" {
  bucket = var.bucket_name
  acl    = "private"
}

output "bucket_name" {
  value = aws_s3_bucket.sample_bucket.id
}
