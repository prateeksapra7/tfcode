terraform {
  backend "azurerm" {
   # tenant_id            = "00000000-0000-0000-0000-000000000000"  # Can also be set via `ARM_TENANT_ID` environment variable.
   # client_id            = "00000000-0000-0000-0000-000000000000"  # Can also be set via `ARM_CLIENT_ID` environment variable.
    resource_group_name = "example"               
    storage_account_name = "prateekresource"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "prod-tfstate"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

