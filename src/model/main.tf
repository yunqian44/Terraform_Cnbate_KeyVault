terraform {
  backend "azurerm" {
    //storage_account_name = "cnbatestorestatefile004"
    //container_name       = "terraform-state"
    //key                  = "cnbate.terraform.stats"

    storage_account_name = var.storage_account_name
    container_name       = var.container_name
    key                  = var.key
  }

  required_providers {
    azurerm = {
    }
  }
}

provider "azurerm" {
  features {}
}

locals {
  location_eastAsia = "East Asia"
}

data "azurerm_resource_group" "cnbate_resource_group" {
  name = var.resource_group_name
}


module "cnbate_Web_app" {
  source                = "../module/web_app"
  app_service_locations = [local.location_eastAsia]
  resource_group_name   = data.azurerm_resource_group.cnbate_resource_group.name

  enable                  = var.enable
  enable_app_service_plan = var.enable_app_service_plan
  app_service_plan_count  = var.app_service_plan_count
  app_service_plan_names  = var.app_service_plan_names
  app_service_plans       = var.app_service_plans

  enable_app_service = var.enable_app_service
  app_service_count  = var.app_service_count
  app_service_names  = var.app_service_names
  app_settings       = var.app_settings
}
