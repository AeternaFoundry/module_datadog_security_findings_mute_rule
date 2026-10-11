resource "datadog_security_findings_mute_rule" "security_findings_mute_rules" {
  for_each = var.security_findings_mute_rules

  action  = each.value.action
  name    = each.value.name
  rule    = each.value.rule
  enabled = each.value.enabled
}

