# Create S3 bucket for storing Terraform state
resource "aws_s3_bucket" "terraform_state" {
  bucket = "fugedemirok-terraform-state"
  
  versioning {
    enabled = true  # Enable versioning for state file protection
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

}
