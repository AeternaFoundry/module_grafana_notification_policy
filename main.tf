resource "grafana_notification_policy" "notification_policies" {
  for_each = var.notification_policies

  contact_point      = each.value.contact_point
  group_by           = each.value.group_by
  disable_provenance = each.value.disable_provenance
  group_interval     = each.value.group_interval
  group_wait         = each.value.group_wait
  org_id             = each.value.org_id
  repeat_interval    = each.value.repeat_interval

  dynamic "policy" {
    for_each = each.value.policy != null ? each.value.policy : []
    content {
      active_timings = policy.value.active_timings
      contact_point  = policy.value.contact_point
      continue       = policy.value.continue
      group_by       = policy.value.group_by
      group_interval = policy.value.group_interval
      group_wait     = policy.value.group_wait
      dynamic "matcher" {
        for_each = policy.value.matcher != null ? policy.value.matcher : []
        content {
          label = matcher.value.label
          match = matcher.value.match
          value = matcher.value.value
        }
      }
      mute_timings = policy.value.mute_timings
      dynamic "policy" {
        for_each = policy.value.policy != null ? policy.value.policy : []
        content {
          active_timings = policy.value.active_timings
          contact_point  = policy.value.contact_point
          continue       = policy.value.continue
          group_by       = policy.value.group_by
          group_interval = policy.value.group_interval
          group_wait     = policy.value.group_wait
          dynamic "matcher" {
            for_each = policy.value.matcher != null ? policy.value.matcher : []
            content {
              label = matcher.value.label
              match = matcher.value.match
              value = matcher.value.value
            }
          }
          mute_timings = policy.value.mute_timings
          dynamic "policy" {
            for_each = policy.value.policy != null ? policy.value.policy : []
            content {
              active_timings = policy.value.active_timings
              contact_point  = policy.value.contact_point
              continue       = policy.value.continue
              group_by       = policy.value.group_by
              group_interval = policy.value.group_interval
              group_wait     = policy.value.group_wait
              dynamic "matcher" {
                for_each = policy.value.matcher != null ? policy.value.matcher : []
                content {
                  label = matcher.value.label
                  match = matcher.value.match
                  value = matcher.value.value
                }
              }
              mute_timings = policy.value.mute_timings
              dynamic "policy" {
                for_each = policy.value.policy != null ? policy.value.policy : []
                content {
                  active_timings = policy.value.active_timings
                  contact_point  = policy.value.contact_point
                  continue       = policy.value.continue
                  group_by       = policy.value.group_by
                  group_interval = policy.value.group_interval
                  group_wait     = policy.value.group_wait
                  dynamic "matcher" {
                    for_each = policy.value.matcher != null ? policy.value.matcher : []
                    content {
                      label = matcher.value.label
                      match = matcher.value.match
                      value = matcher.value.value
                    }
                  }
                  mute_timings = policy.value.mute_timings
                  dynamic "policy" {
                    for_each = policy.value.policy != null ? policy.value.policy : []
                    content {
                      active_timings = policy.value.active_timings
                      contact_point  = policy.value.contact_point
                      continue       = policy.value.continue
                      group_by       = policy.value.group_by
                      group_interval = policy.value.group_interval
                      group_wait     = policy.value.group_wait
                      dynamic "matcher" {
                        for_each = policy.value.matcher != null ? policy.value.matcher : []
                        content {
                          label = matcher.value.label
                          match = matcher.value.match
                          value = matcher.value.value
                        }
                      }
                      mute_timings    = policy.value.mute_timings
                      repeat_interval = policy.value.repeat_interval
                    }
                  }
                  repeat_interval = policy.value.repeat_interval
                }
              }
              repeat_interval = policy.value.repeat_interval
            }
          }
          repeat_interval = policy.value.repeat_interval
        }
      }
      repeat_interval = policy.value.repeat_interval
    }
  }
}

