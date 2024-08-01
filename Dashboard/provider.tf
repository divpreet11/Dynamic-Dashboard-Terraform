terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      # version = "3.40.1"
    }
  }
}

# provider "newrelic" {
#   account_id = var.newrelic_account_id
#   api_key = "NRAK-YJCSTQM5D1F10XJS2JZ82IICHD6"
# }