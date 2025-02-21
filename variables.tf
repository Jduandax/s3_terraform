variable "aws_region" {
  description = "Región de AWS"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Nombre del bucket de S3"
  type        = string
  default     = "uat-s3-images-digital-core-m"
}

variable "enable_versioning" {
  description = "Habilitar o deshabilitar el versioning del bucket"
  type        = bool
  default     = false
}

variable "enable_encryption" {
  description = "Habilitar o deshabilitar la encriptación del bucket"
  type        = bool
  default     = false
}
variable "enable_public_access_block" {
  description = "Habilitar o deshabilitar restricciones de acceso público"
  type        = bool
  default     = true
}
