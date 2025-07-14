terraform {
  backend "s3" {
    bucket = "terraform-remote-state-v"
    key    = "terraform.tfstate.prod.DynamoDB"
    region = "us-east-1"
  }
}
