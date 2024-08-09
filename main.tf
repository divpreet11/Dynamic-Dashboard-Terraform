module "dashboard_module" {
  source = "./Dashboard"
  newrelic_account_id = var.newrelic_account_id
  dashboard = var.dashboard
  page = var.page
  

}