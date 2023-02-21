output "key_vault_access_policy_ids" {
  value = azurerm_key_vault_access_policy.key_vault_access_policy.*.id
}
