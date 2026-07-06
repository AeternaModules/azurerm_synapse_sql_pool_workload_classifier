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
  # --- Unconfirmed validation candidates, derived from azurerm_synapse_sql_pool_workload_classifier's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: workload_group_id
  #   source:    [from validate.SqlPoolWorkloadGroupID] !ok
  # path: workload_group_id
  #   source:    [from validate.SqlPoolWorkloadGroupID] err != nil
}

