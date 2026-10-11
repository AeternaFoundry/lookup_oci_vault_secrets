variable "vault_secrets_lookup" {
  description = <<EOT
Map of vault_secrets_lookup, attributes below
Required:
    - compartment_id
Optional:
    - name
    - state
    - vault_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    name           = optional(string)
    state          = optional(string)
    vault_id       = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

