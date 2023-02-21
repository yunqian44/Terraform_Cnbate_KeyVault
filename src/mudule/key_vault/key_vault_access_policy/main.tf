resource "azurerm_key_vault_access_policy" "key_vault_access_policy" {

  count        = var.enable && var.enable_key_vault_access_policy && var.key_vault_access_policy_count > 0 ? var.key_vault_access_policy_count : 0
  key_vault_id = element(var.keyvault_ids, count.index)
  tenant_id    = var.tenant_id
  object_id    = var.object_id

  secret_permissions      = element(var.secret_permissions, count.index)
  certificate_permissions = element(var.certificate_permissions, count.index)
  key_permissions         = element(var.key_permissions, count.index)
}
