variable "group_service_accounts" {
  description = <<EOT
Map of group_service_accounts, attributes below
Required:
    - group
Optional:
    - email
    - name
    - skip_wait_for_deletion
    - timeouts
    - username
EOT

  type = map(object({
    group                  = string
    email                  = optional(string)
    name                   = optional(string)
    skip_wait_for_deletion = optional(bool)
    timeouts = optional(object({
      delete = optional(string)
    }))
    username = optional(string)
  }))
}

