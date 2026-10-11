variable "security_findings_mute_rules" {
  description = <<EOT
Map of security_findings_mute_rules, attributes below
Required:
    - action
    - name
    - rule
Optional:
    - enabled
EOT

  type = map(object({
    action = object({
      expire_at          = optional(number)
      reason             = string
      reason_description = optional(string)
    })
    name = string
    rule = object({
      finding_types = list(string)
      query         = optional(string)
    })
    enabled = optional(bool)
  }))
}

