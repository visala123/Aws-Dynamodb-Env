terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.3.0"
}

provider "aws" {
  region = var.aws_region
}

module "dynamodb" {
  source = "../../modules/dynamodb"

  table_name               = var.table_name
  billing_mode             = var.billing_mode
  read_capacity            = var.read_capacity
  write_capacity           = var.write_capacity
  hash_key                 = var.hash_key
  range_key                = var.range_key
  attributes               = var.attributes
  ttl_attribute_name       = var.ttl_attribute_name
  ttl_enabled              = var.ttl_enabled
  global_secondary_indexes = var.global_secondary_indexes
  tags                     = var.tags
}