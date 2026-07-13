variable "synapse_sql_pool_workload_classifiers" {
  description = <<EOT
Map of synapse_sql_pool_workload_classifiers, attributes below
Required:
    - member_name
    - name
    - workload_group_id
Optional:
    - context
    - end_time
    - importance
    - label
    - start_time
EOT

  type = map(object({
    member_name       = string
    name              = string
    workload_group_id = string
    context           = optional(string)
    end_time          = optional(string)
    importance        = optional(string)
    label             = optional(string)
    start_time        = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.synapse_sql_pool_workload_classifiers : (
        length(v.member_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_sql_pool_workload_classifiers : (
        v.context == null || (length(v.context) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_sql_pool_workload_classifiers : (
        v.end_time == null || (can(regex("^\\d{2}:\\d{2}$", v.end_time)))
      )
    ])
    error_message = "The `end_time` is of the `HH:MM` format in UTC time zone"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_sql_pool_workload_classifiers : (
        v.importance == null || (contains(["low", "below_normal", "normal", "above_normal", "high"], v.importance))
      )
    ])
    error_message = "must be one of: low, below_normal, normal, above_normal, high"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_sql_pool_workload_classifiers : (
        v.label == null || (length(v.label) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_sql_pool_workload_classifiers : (
        v.start_time == null || (can(regex("^\\d{2}:\\d{2}$", v.start_time)))
      )
    ])
    error_message = "The `start_time` is of the `HH:MM` format in UTC time zone"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

