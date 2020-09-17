resource "aws_dynamodb_table" "terraform_backend_state_locking"{
  name           = var.dynamodb_table
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
  lifecycle {
    prevent_destroy = true
  }
  tags = {
    Name = "terraform_backend_state_locking"
  }

}
