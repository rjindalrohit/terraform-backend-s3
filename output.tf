output "s3_backend_config_block" {
  value =  <<EOT

backend "s3" {
  bucket = ${aws_s3_bucket.s3_bucket_for_backend.id}
  key    = "terraform.tfstate"
  region = ${var.region}
  dynamodb_table = ${aws_dynamodb_table.terraform_backend_state_locking.id}
  encrypt = true
}
EOT
}
