resource "aws_s3_bucket" "shubham-Bucket" {
    bucket = "shubham-web-bucket-23061997"
    acl = "private"

    tags = {
        "Name" = "shubham-web-bucket-23061997"
        "Environment" = "Dev"
        "UserType" = "Machine"
    }
}
