module "transit_aws_1" {
  source  = "terraform-aviatrix-modules/aws-transit/aviatrix"
  version = "3.0.1"
  cidr    = var.transit_cidr
  region  = var.region
  account = var.account
  name    = "transit"
}

module "spoke_aws_1" {
  source     = "terraform-aviatrix-modules/aws-spoke/aviatrix"
  version    = "3.0.0"
  name       = "App1"
  cidr       = var.spoke1_cidr
  region     = var.region
  account    = var.account # some other account
  transit_gw = module.transit_aws_1.transit_gateway.gw_name
}

module "spoke_aws_2" {
  source     = "terraform-aviatrix-modules/aws-spoke/aviatrix"
  version    = "3.0.0"
  name       = "App2"
  cidr       = var.spoke2_cidr
  region     = var.region
  account    = var.account # some other account
  transit_gw = module.transit_aws_1.transit_gateway.gw_name
}

module "spoke_aws_3" {
  source     = "terraform-aviatrix-modules/aws-spoke/aviatrix"
  version    = "3.0.0"
  name       = "App3"
  cidr       = var.spoke3_cidr
  region     = var.region
  account    = var.account # some other account
  transit_gw = module.transit_aws_1.transit_gateway.gw_name
}
