data "oci_vault_secrets" "vault_secrets_lookup" {
  for_each = var.vault_secrets_lookup

  compartment_id = each.value.compartment_id
  name           = each.value.name
  state          = each.value.state
  vault_id       = each.value.vault_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

