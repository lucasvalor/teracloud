terraform {
  backend "s3" {
    bucket  = "lucasvalor"
    encrypt = "true"
    key     = "teracloud/dev/terraform_dev.tfstate"
    region  = "us-east-1"
  }
}
