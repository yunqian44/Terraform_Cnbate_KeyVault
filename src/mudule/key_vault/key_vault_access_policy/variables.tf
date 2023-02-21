variable "enable" {
  type        = bool
  default     = false
  description = "(required) main switch whether to create key_vault access policy"
}

variable "enable_key_vault_access_policy" {
  type        = bool
  default     = false
  description = "(required) whether to create the key_vault access policy"
}

variable "key_vault_access_policy_count" {
  type        = number
  default     = 0
  description = "(required) number of create the key_vault access policy"
}


variable "key_permissions" {
  type        = list(list(string))
  description = "(Optional) List of key permissions, must be one or more from the following:Backup, Create, Decrypt, Delete, Encrypt, Get, Import, List, Purge, Recover, Restore, Sign, UnwrapKey, Update, Verify, WrapKey, Release, Rotate, GetRotationPolicy, and SetRotationPolicy"
}

variable "certificate_permissions" {
  type        = list(list(string))
  description = "(Optional) List of certificate permissions, must be one or more from the following: Backup, Create, Delete, DeleteIssuers, Get, GetIssuers, Import, List, ListIssuers, ManageContacts, ManageIssuers, Purge, Recover, Restore, SetIssuers and Update"
}


variable "secret_permissions" {
  type        = list(list(string))
  description = " (Optional) List of secret permissions, must be one or more from the following: Backup, Delete, Get, List, Purge, Recover, Restore and Set"
}
