output "s3_bucket_name" {
  description = "Nombre del bucket S3 donde se almacenan los archivos de instalación"
  value       = aws_s3_bucket.s3_bucket.id
}
