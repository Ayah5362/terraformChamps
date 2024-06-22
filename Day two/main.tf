# Define variables with default values
variable "region" {
  default = "us-east-1"
}
variable "Environment" {
  default = "terraformChamps"
}
variable "Owner" {
  default = "Aya"
}
variable "bucket_name" {
  default = "aya-bucket-01"
}
variable "iam_user" {
  default = "Aya"
}

# Define provider
provider "aws" {
  region = var.region
}

# Create S3 bucket with necessary configurations
resource "aws_s3_bucket" "bucket" {
  bucket        = var.bucket_name
  force_destroy = true

  versioning {
    enabled = true
  }

  ownership_controls {
    rule {
      object_ownership = "BucketOwnerEnforced"
    }
  }

  tags = {
    Name        = "logs_bucket"
    Environment = var.Environment
    Owner       = var.Owner
  }
}

# Create a directory in the S3 bucket
resource "aws_s3_object" "bucket_directory" {
  bucket = aws_s3_bucket.bucket.bucket
  key    = "logs/"
}

# Get IAM user
data "aws_iam_user" "iam_user" {
  user_name = var.iam_user
}

# Create policy document for the IAM user to allow upload only under logs/
data "aws_iam_policy_document" "allow_access_iam_user" {
  statement {
    actions = ["s3:PutObject"]
    resources = ["arn:aws:s3:::${var.bucket_name}/logs/*"]
    principals {
      type        = "AWS"
      identifiers = [data.aws_iam_user.iam_user.arn]
    }
  }
}

# Attach the policy to the bucket
resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.bucket.id
  policy = data.aws_iam_policy_document.allow_access_iam_user.json
}



    
