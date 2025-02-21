
resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  tags = {
    Name = var.bucket_name
  }
}

resource "aws_s3_bucket_versioning" "bucket_versioning" {
  count  = var.enable_versioning ? 1 : 0
  bucket = aws_s3_bucket.s3_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
  count  = var.enable_encryption ? 1 : 0
  bucket = aws_s3_bucket.s3_bucket.id

  rule {
    bucket_key_enabled = true
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "public-access-block" {
  count  = var.enable_public_access_block ? 1 : 0
  bucket = aws_s3_bucket.s3_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
