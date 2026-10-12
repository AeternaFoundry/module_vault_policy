resource "vault_policy" "policies" {
  for_each = var.policies

  name            = each.value.name
  policy          = each.value.policy
  allow_overwrite = each.value.allow_overwrite
  namespace       = each.value.namespace
}

