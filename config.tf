provider "aws" {
  region = "ap-northeast-1"
}

# tfstate
terraform {
  required_version = ">= 0.12.18"

  backend "s3" {
    bucket = "procome-terraform-tfstate"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}
