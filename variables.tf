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
  # --- Unconfirmed validation candidates, derived from azurerm_synapse_sql_pool_workload_classifier's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: workload_group_id
  #   source:    [from validate.SqlPoolWorkloadGroupID] !ok
  # path: workload_group_id
  #   source:    [from validate.SqlPoolWorkloadGroupID] err != nil
  # path: member_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: context
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: end_time
  #   condition: can(regex("^\\d{2}:\\d{2}$", value))
  #   message:   The `end_time` is of the `HH:MM` format in UTC time zone
  # path: importance
  #   condition: contains(["low", "below_normal", "normal", "above_normal", "high"], value)
  #   message:   must be one of: low, below_normal, normal, above_normal, high
  # path: label
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: start_time
  #   condition: can(regex("^\\d{2}:\\d{2}$", value))
  #   message:   The `start_time` is of the `HH:MM` format in UTC time zone
}

