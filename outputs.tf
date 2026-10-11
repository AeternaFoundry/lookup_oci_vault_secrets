output "vault_secrets_lookup_id" {
  description = "Map of id values across all vault_secrets_lookup, keyed the same as var.vault_secrets_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_vault_secrets.vault_secrets_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vault_secrets_lookup_compartment_id" {
  description = "Map of compartment_id values across all vault_secrets_lookup, keyed the same as var.vault_secrets_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_vault_secrets.vault_secrets_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "vault_secrets_lookup_filter" {
  description = "Map of filter values across all vault_secrets_lookup, keyed the same as var.vault_secrets_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_vault_secrets.vault_secrets_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "vault_secrets_lookup_name" {
  description = "Map of name values across all vault_secrets_lookup, keyed the same as var.vault_secrets_lookup except keys with no name are omitted"
  value       = { for k, v in data.oci_vault_secrets.vault_secrets_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "vault_secrets_lookup_secrets" {
  description = "Map of secrets values across all vault_secrets_lookup, keyed the same as var.vault_secrets_lookup except keys with no secrets are omitted"
  value       = { for k, v in data.oci_vault_secrets.vault_secrets_lookup : k => v.secrets if v.secrets != null && length(v.secrets) > 0 }
}
output "vault_secrets_lookup_state" {
  description = "Map of state values across all vault_secrets_lookup, keyed the same as var.vault_secrets_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_vault_secrets.vault_secrets_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}
output "vault_secrets_lookup_vault_id" {
  description = "Map of vault_id values across all vault_secrets_lookup, keyed the same as var.vault_secrets_lookup except keys with no vault_id are omitted"
  value       = { for k, v in data.oci_vault_secrets.vault_secrets_lookup : k => v.vault_id if v.vault_id != null && length(v.vault_id) > 0 }
}

