terraform {
  backend "s3" {
    bucket = "terraform-remote-state-v"
    key    = "terraform.tfstate.dev.DynamoDB"
    region = "us-east-1"
  }
}

