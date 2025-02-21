
# resource "aws_s3_bucket" "devops-test" {
#   bucket = "${var.bucket_name}-${random_id.bucket_suffix.hex}"
# }

# resource "aws_s3_bucket_ownership_controls" "hcis_bucket_ownership" {
#   bucket = aws_s3_bucket.devops-test.id
#   rule {
#     object_ownership = "BucketOwnerEnforced"
#   }
# }

# resource "random_id" "bucket_suffix" {
#   byte_length = 4
# }
