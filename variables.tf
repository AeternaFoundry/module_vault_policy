variable "policies" {
  description = <<EOT
Map of policies, attributes below
Required:
    - name
    - policy
Optional:
    - allow_overwrite
    - namespace
EOT

  type = map(object({
    name            = string
    policy          = string
    allow_overwrite = optional(bool)
    namespace       = optional(string)
  }))
}

