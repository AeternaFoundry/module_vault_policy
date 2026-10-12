output "policies_id" {
  description = "Map of id values across all policies, keyed the same as var.policies except keys with no id are omitted"
  value       = { for k, v in vault_policy.policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "policies_allow_overwrite" {
  description = "Map of allow_overwrite values across all policies, keyed the same as var.policies except keys with no allow_overwrite are omitted"
  value       = { for k, v in vault_policy.policies : k => v.allow_overwrite if v.allow_overwrite != null }
}
output "policies_name" {
  description = "Map of name values across all policies, keyed the same as var.policies except keys with no name are omitted"
  value       = { for k, v in vault_policy.policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "policies_namespace" {
  description = "Map of namespace values across all policies, keyed the same as var.policies except keys with no namespace are omitted"
  value       = { for k, v in vault_policy.policies : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "policies_policy" {
  description = "Map of policy values across all policies, keyed the same as var.policies except keys with no policy are omitted"
  value       = { for k, v in vault_policy.policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}

