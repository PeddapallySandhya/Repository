terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "Hexaware-Technologies"

    workspaces {
      name = "demo"
    }
  }
}

provider "snowflake" {
    account = "wb13532.ap-southeast-1"
    username = "Sandhya"
    password = "Sandhya7@"
    warehouse = "COMPUTE_WH"
}

resource "snowflake_database" "demo_db" {
  name    = "DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}