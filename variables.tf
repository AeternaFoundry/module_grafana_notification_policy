variable "notification_policies" {
  description = <<EOT
Map of notification_policies, attributes below
Required:
    - contact_point
    - group_by
Optional:
    - disable_provenance
    - group_interval
    - group_wait
    - org_id
    - repeat_interval
    - policy (block):
        - active_timings (optional)
        - contact_point (optional)
        - continue (optional)
        - group_by (optional)
        - group_interval (optional)
        - group_wait (optional)
        - matcher (optional, block):
            - label (required)
            - match (required)
            - value (required)
        - mute_timings (optional)
        - policy (optional, block):
            - active_timings (optional)
            - contact_point (optional)
            - continue (optional)
            - group_by (optional)
            - group_interval (optional)
            - group_wait (optional)
            - matcher (optional, block):
                - label (required)
                - match (required)
                - value (required)
            - mute_timings (optional)
            - policy (optional, block):
                - active_timings (optional)
                - contact_point (optional)
                - continue (optional)
                - group_by (optional)
                - group_interval (optional)
                - group_wait (optional)
                - matcher (optional, block):
                    - label (required)
                    - match (required)
                    - value (required)
                - mute_timings (optional)
                - policy (optional, block):
                    - active_timings (optional)
                    - contact_point (optional)
                    - continue (optional)
                    - group_by (optional)
                    - group_interval (optional)
                    - group_wait (optional)
                    - matcher (optional, block):
                        - label (required)
                        - match (required)
                        - value (required)
                    - mute_timings (optional)
                    - policy (optional, block):
                        - active_timings (optional)
                        - contact_point (optional)
                        - continue (optional)
                        - group_by (required)
                        - group_interval (optional)
                        - group_wait (optional)
                        - matcher (optional, block):
                            - label (required)
                            - match (required)
                            - value (required)
                        - mute_timings (optional)
                        - repeat_interval (optional)
                    - repeat_interval (optional)
                - repeat_interval (optional)
            - repeat_interval (optional)
        - repeat_interval (optional)
EOT

  type = map(object({
    contact_point      = string
    group_by           = list(string)
    disable_provenance = optional(bool)
    group_interval     = optional(string)
    group_wait         = optional(string)
    org_id             = optional(string)
    repeat_interval    = optional(string)
    policy = optional(list(object({
      active_timings = optional(list(string))
      contact_point  = optional(string)
      continue       = optional(bool)
      group_by       = optional(list(string))
      group_interval = optional(string)
      group_wait     = optional(string)
      matcher = optional(list(object({
        label = string
        match = string
        value = string
      })))
      mute_timings = optional(list(string))
      policy = optional(list(object({
        active_timings = optional(list(string))
        contact_point  = optional(string)
        continue       = optional(bool)
        group_by       = optional(list(string))
        group_interval = optional(string)
        group_wait     = optional(string)
        matcher = optional(list(object({
          label = string
          match = string
          value = string
        })))
        mute_timings = optional(list(string))
        policy = optional(list(object({
          active_timings = optional(list(string))
          contact_point  = optional(string)
          continue       = optional(bool)
          group_by       = optional(list(string))
          group_interval = optional(string)
          group_wait     = optional(string)
          matcher = optional(list(object({
            label = string
            match = string
            value = string
          })))
          mute_timings = optional(list(string))
          policy = optional(list(object({
            active_timings = optional(list(string))
            contact_point  = optional(string)
            continue       = optional(bool)
            group_by       = optional(list(string))
            group_interval = optional(string)
            group_wait     = optional(string)
            matcher = optional(list(object({
              label = string
              match = string
              value = string
            })))
            mute_timings = optional(list(string))
            policy = optional(list(object({
              active_timings = optional(list(string))
              contact_point  = optional(string)
              continue       = optional(bool)
              group_by       = list(string)
              group_interval = optional(string)
              group_wait     = optional(string)
              matcher = optional(list(object({
                label = string
                match = string
                value = string
              })))
              mute_timings    = optional(list(string))
              repeat_interval = optional(string)
            })))
            repeat_interval = optional(string)
          })))
          repeat_interval = optional(string)
        })))
        repeat_interval = optional(string)
      })))
      repeat_interval = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.notification_policies : (
        alltrue([for x in v.group_by : length(x) > 0])
      )
    ])
    error_message = "must not be empty"
  }
}

