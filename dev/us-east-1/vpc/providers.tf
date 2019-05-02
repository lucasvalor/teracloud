provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "lucasvalor-teracloud-practices-2019"
    key    = "teracloud_dev.tfstate"
    region = "us-east-1"
  }
}
