resource "gitlab_group_service_account" "group_service_accounts" {
  for_each = var.group_service_accounts

  group                  = each.value.group
  email                  = each.value.email
  name                   = each.value.name
  skip_wait_for_deletion = each.value.skip_wait_for_deletion
  timeouts               = each.value.timeouts
  username               = each.value.username
}

