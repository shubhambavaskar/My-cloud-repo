terraform {
  backend "s3" {
    bucket         = "my-terraform-backend-bucket"  # Replace with your S3 bucket name
    key            = "path/to/terraform.tfstate"    # Path within the S3 bucket
    region         = "us-east-1"                    # The region where your S3 bucket is located
    encrypt        = true                           # Enable encryption
    dynamodb_table = "terraform-state-lock"         # DynamoDB table for state locking
    acl            = "bucket-owner-full-control"    # ACL to apply to the state file
  }
}

