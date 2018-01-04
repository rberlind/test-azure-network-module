//--------------------------------------------------------------------
// Variables
variable "network_allow_rdp_traffic" {}
variable "network_resource_group_name" {}

//--------------------------------------------------------------------
// Modules
module "network" {
  source  = "roger-ptfe.hashidemos.io/SolutionsEngineering/network/azurerm"
  version = "1.1.2"

  address_space = "10.0.0.0/16"
  allow_rdp_traffic = "${var.network_allow_rdp_traffic}"
  allow_ssh_traffic = "true"
  location = "eastus"
  resource_group_name = "${var.network_resource_group_name}"
  tags = { environment = "dev" }
}
