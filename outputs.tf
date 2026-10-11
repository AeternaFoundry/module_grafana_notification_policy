output "notification_policies_id" {
  description = "Map of id values across all notification_policies, keyed the same as var.notification_policies except keys with no id are omitted"
  value       = { for k, v in grafana_notification_policy.notification_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "notification_policies_contact_point" {
  description = "Map of contact_point values across all notification_policies, keyed the same as var.notification_policies except keys with no contact_point are omitted"
  value       = { for k, v in grafana_notification_policy.notification_policies : k => v.contact_point if v.contact_point != null && length(v.contact_point) > 0 }
}
output "notification_policies_disable_provenance" {
  description = "Map of disable_provenance values across all notification_policies, keyed the same as var.notification_policies except keys with no disable_provenance are omitted"
  value       = { for k, v in grafana_notification_policy.notification_policies : k => v.disable_provenance if v.disable_provenance != null }
}
output "notification_policies_group_by" {
  description = "Map of group_by values across all notification_policies, keyed the same as var.notification_policies except keys with no group_by are omitted"
  value       = { for k, v in grafana_notification_policy.notification_policies : k => v.group_by if v.group_by != null && length(v.group_by) > 0 }
}
output "notification_policies_group_interval" {
  description = "Map of group_interval values across all notification_policies, keyed the same as var.notification_policies except keys with no group_interval are omitted"
  value       = { for k, v in grafana_notification_policy.notification_policies : k => v.group_interval if v.group_interval != null && length(v.group_interval) > 0 }
}
output "notification_policies_group_wait" {
  description = "Map of group_wait values across all notification_policies, keyed the same as var.notification_policies except keys with no group_wait are omitted"
  value       = { for k, v in grafana_notification_policy.notification_policies : k => v.group_wait if v.group_wait != null && length(v.group_wait) > 0 }
}
output "notification_policies_org_id" {
  description = "Map of org_id values across all notification_policies, keyed the same as var.notification_policies except keys with no org_id are omitted"
  value       = { for k, v in grafana_notification_policy.notification_policies : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "notification_policies_policy" {
  description = "Map of policy values across all notification_policies, keyed the same as var.notification_policies except keys with no policy are omitted"
  value       = { for k, v in grafana_notification_policy.notification_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "notification_policies_repeat_interval" {
  description = "Map of repeat_interval values across all notification_policies, keyed the same as var.notification_policies except keys with no repeat_interval are omitted"
  value       = { for k, v in grafana_notification_policy.notification_policies : k => v.repeat_interval if v.repeat_interval != null && length(v.repeat_interval) > 0 }
}

