provider "aws" {
  region = "eu-north-1"
}

variable "s3_read_policy" {
  description = "S3 read-only IAM policy"
  type        = string

  default = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:ListAllMyBuckets",
        "s3:GetBucketLocation",
        "s3:ListBucket",
        "s3:GetObject"
      ],
      "Resource": "*"
    }
  ]
}
POLICY
}

resource "aws_iam_user" "capstone_user" {
  name = "capstone-terraform-s3-reader"

  tags = {
    Project = "Capstone Project 4"
  }
}

resource "aws_iam_user_policy" "s3_read" {
  name   = "capstone-s3-read-policy"
  user   = aws_iam_user.capstone_user.name
  policy = var.s3_read_policy
}
