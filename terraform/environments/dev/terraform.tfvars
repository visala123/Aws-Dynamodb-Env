aws_region         = "us-east-1"
table_name         = "GameScores"
billing_mode       = "PROVISIONED"
read_capacity      = 20
write_capacity     = 20
hash_key           = "UserId"
range_key          = "GameTitle"
ttl_attribute_name = "TimeToExist"
ttl_enabled        = true

attributes = [
  { name = "UserId", type = "S" },
  { name = "GameTitle", type = "S" },
  { name = "TopScore", type = "N" }
]

global_secondary_indexes = [
  {
    name               = "GameTitleIndex"
    hash_key           = "GameTitle"
    range_key          = "TopScore"
    read_capacity      = 10
    write_capacity     = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["UserId"]
  }
]

tags = {
  Name        = "dynamodb-table-1"
  Environment = "dev"
}