variable "aws_region" {}
variable "table_name" {}
variable "billing_mode" {}
variable "read_capacity" {}
variable "write_capacity" {}
variable "hash_key" {}
variable "range_key" {}
variable "attributes" {
  type = list(object({
    name = string
    type = string
  }))
}
variable "ttl_attribute_name" {}
variable "ttl_enabled" {}
variable "global_secondary_indexes" {
  type = list(object({
    name               = string
    hash_key           = string
    range_key          = string
    read_capacity      = number
    write_capacity     = number
    projection_type    = string
    non_key_attributes = list(string)
  }))
}
variable "tags" {
  type = map(string)
}

