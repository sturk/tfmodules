module "vpc" {
  source = "modules/vpc"
  tags = {
    Name           = "default_dev_vpc"
    CI-Env         = "preprod"
    business_unit  = var.business_unit
    cost_center    = var.cost_center
    classification = "internal"
  }
  region           = var.region
  account_id       = var.account_id
  environment      = var.environment
  cost_center      = var.cost_center
  business_unit    = var.business_unit
}
