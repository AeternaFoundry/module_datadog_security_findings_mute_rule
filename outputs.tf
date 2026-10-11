output "security_findings_mute_rules_id" {
  description = "Map of id values across all security_findings_mute_rules, keyed the same as var.security_findings_mute_rules except keys with no id are omitted"
  value       = { for k, v in datadog_security_findings_mute_rule.security_findings_mute_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_findings_mute_rules_action" {
  description = "Map of action values across all security_findings_mute_rules, keyed the same as var.security_findings_mute_rules except keys with no action are omitted"
  value       = { for k, v in datadog_security_findings_mute_rule.security_findings_mute_rules : k => v.action if v.action != null && length(v.action) > 0 }
}
output "security_findings_mute_rules_enabled" {
  description = "Map of enabled values across all security_findings_mute_rules, keyed the same as var.security_findings_mute_rules except keys with no enabled are omitted"
  value       = { for k, v in datadog_security_findings_mute_rule.security_findings_mute_rules : k => v.enabled if v.enabled != null }
}
output "security_findings_mute_rules_name" {
  description = "Map of name values across all security_findings_mute_rules, keyed the same as var.security_findings_mute_rules except keys with no name are omitted"
  value       = { for k, v in datadog_security_findings_mute_rule.security_findings_mute_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "security_findings_mute_rules_rule" {
  description = "Map of rule values across all security_findings_mute_rules, keyed the same as var.security_findings_mute_rules except keys with no rule are omitted"
  value       = { for k, v in datadog_security_findings_mute_rule.security_findings_mute_rules : k => v.rule if v.rule != null && length(v.rule) > 0 }
}

