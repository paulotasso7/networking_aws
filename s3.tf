resource "aws_s3_bucket" "paulos-bucket" {
  bucket = var.my_bucket


  object_lock_enabled = true

  tags = {
    Name = "S3 Remote Terraform State Store"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = var.my_bucket
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "paulos-bucket" {
  bucket = aws_s3_bucket.paulos-bucket.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }

}
