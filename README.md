# Aviatrix Simple Transit example (using public modules)

### Description
This repo deploys Aviatrix Transit spokes in HA mode including VPC creation in AWS.

The pattern can be repeated in any region necessary.

### Compatibility

Terraform version | Controller version | Terraform provider version
:--- | :--- | :---
0.13 | 6.2 | 2.17.2

### Variables

Modify ```terraform.tfvars``` as needed for your configuration.

If peering with other Aviatrix Transit gateways is required include the [Aviatrix MC Peering Module](https://registry.terraform.io/modules/terraform-aviatrix-modules/mc-transit-peering/aviatrix/latest) in ```main.tf```.

### Dependencies

- Software version requirements met
- Aviatrix Controller with Access Accounts defined for AWS and Azure
- Sufficient limits in place for CSPs and regions in scope **_(EIPs, Compute quotas, etc.)_**
- terraform .13 in the user environment ```terraform -v```
- Terraform provider requirements are met (AWS) in the runtime environment

### Workflow

- Modify ```terraform.tfvars``` as needed
- ```terraform init```
- ```terraform plan```
- ```terraform apply --auto-approve```