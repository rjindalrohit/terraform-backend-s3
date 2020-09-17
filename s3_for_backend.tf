resource "aws_s3_bucket" "s3_bucket_for_backend" {
  bucket = var.bucket_name
  acl    = "private"
  versioning {
    enabled = var.s3_encryption
  }
  lifecycle {
    prevent_destroy = true
  }
  tags = {
    Name = "terraform_remote_state_backend_bucket"
  }
}
