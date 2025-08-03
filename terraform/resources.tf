# resources.tf
# This file contains all non-networking resources


#------------------------------------------------------------------------
# S3 bucket configuration
#------------------------------------------------------------------------

# Public S3 Bucket for Website Hosting
resource "aws_s3_bucket" "dev_bucket" {
  bucket = "crc.awsportfolio.jayfrench.cloud"

  tags = {
    Name        = "crc-dev-bucket"
    Environment = "dev"
    Project     = "cloud-resume-challenge"
  }
}

resource "aws_s3_bucket_website_configuration" "dev_bucket_website" {
  bucket = aws_s3_bucket.dev_bucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "index.html"
  }
}

# Allow Public Access to the Bucket
resource "aws_s3_bucket_public_access_block" "dev_bucket_block" {
  bucket = aws_s3_bucket.dev_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

# Bucket Policy to Allow Public Read Access to Objects
resource "aws_s3_bucket_policy" "dev_bucket_policy" {
  bucket = aws_s3_bucket.dev_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.dev_bucket.arn}/*"
      }
    ]
  })
  depends_on = [
    aws_s3_bucket_public_access_block.dev_bucket_block
  ]
}
#------------------------------------------------------------------------------------------------


#------------------------------------------------------------------------
# Cloudfront Configuration test push
#------------------------------------------------------------------------


#------------------------------------------------------------------------
# DynamoDB Configuration
#------------------------------------------------------------------------


#------------------------------------------------------------------------
# Lambda Configuration
#------------------------------------------------------------------------


#------------------------------------------------------------------------
# S3 bucket configuration
#------------------------------------------------------------------------