provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "lucasvalor-teracloud-practices-2019"
  acl    = "private"
  region = "us-east-1"

  versioning {
    enabled = true
  }

  tags {
    Name = "Teracloud"
  }
}
