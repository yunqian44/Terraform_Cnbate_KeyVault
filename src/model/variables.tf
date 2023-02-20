########################## backend #########################
variable "storage_account_name" {
  type        = string
  default     = "cnbateterraformstorage"
  description = "(required)The Azure Storage Account Name of the terraform remote Storage"
}

variable "container_name" {
  type        = string
  default     = "terraform-state"
  description = "(required)The Container Name for the terraform remote storage status file"
}

variable "key" {
  type        = string
  default     = "cnbate.terraform.stats"
  description = "(required)The Container Key Name for terraform the remote storage status file"
}

########################## resource group start #########################
variable "resource_group_name" {
  type        = string
  default     = "Web_Test_TF_RG"
  description = "(required)The name of the resource group"
}

########################## resource group end #########################


########################## web service app #########################
variable "enable" {
  type        = bool
  default     = true
  description = "(required) Whether to create a web app"
}

variable "enable_app_service_plan" {
  type        = bool
  default     = true
  description = "(required) Whether to create a web app plan"
}

variable "app_service_plan_count" {
  type        = number
  default     = 1
  description = "(required) number of create a web app plan"
}

variable "app_service_plan_names" {
  type = list(string)
  default = [
    "cnbate_appserviceplan01"
  ]
  description = "(required) names of create a web app plan"
}

variable "app_service_plans" {
  type = list(map(string))
  default = [
    {
      tier = "Standard",
      size = "S1"
    }]
  description = "(required) sku of create a web app plan (map list)"
}


variable "enable_app_service" {
  type        = bool
  default     = true
  description = "(required) Whether to create a web app "
}

variable "app_service_count" {
  type        = number
  default     = 1
  description = "(required) number of create a web app."
}

variable "app_service_names" {
  type = list(string)
  default = [
    "CnBateBlogWeb01"
  ]
  description = "(required) specifies the name of the app service."
}

variable "app_settings" {
  type = list(map(string))
  default = [
    {
      "ASPNETCORE_ENVIRONMENT" = "Production"
      "Location"               = "East Asia"
    }ssss
  ]
  description = "(Optional) A key-value pair of app settings."
}








