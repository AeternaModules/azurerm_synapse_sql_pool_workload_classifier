output "synapse_sql_pool_workload_classifiers_id" {
  description = "Map of id values across all synapse_sql_pool_workload_classifiers, keyed the same as var.synapse_sql_pool_workload_classifiers"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "synapse_sql_pool_workload_classifiers_context" {
  description = "Map of context values across all synapse_sql_pool_workload_classifiers, keyed the same as var.synapse_sql_pool_workload_classifiers"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : k => v.context if v.context != null && length(v.context) > 0 }
}
output "synapse_sql_pool_workload_classifiers_end_time" {
  description = "Map of end_time values across all synapse_sql_pool_workload_classifiers, keyed the same as var.synapse_sql_pool_workload_classifiers"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : k => v.end_time if v.end_time != null && length(v.end_time) > 0 }
}
output "synapse_sql_pool_workload_classifiers_importance" {
  description = "Map of importance values across all synapse_sql_pool_workload_classifiers, keyed the same as var.synapse_sql_pool_workload_classifiers"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : k => v.importance if v.importance != null && length(v.importance) > 0 }
}
output "synapse_sql_pool_workload_classifiers_label" {
  description = "Map of label values across all synapse_sql_pool_workload_classifiers, keyed the same as var.synapse_sql_pool_workload_classifiers"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : k => v.label if v.label != null && length(v.label) > 0 }
}
output "synapse_sql_pool_workload_classifiers_member_name" {
  description = "Map of member_name values across all synapse_sql_pool_workload_classifiers, keyed the same as var.synapse_sql_pool_workload_classifiers"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : k => v.member_name if v.member_name != null && length(v.member_name) > 0 }
}
output "synapse_sql_pool_workload_classifiers_name" {
  description = "Map of name values across all synapse_sql_pool_workload_classifiers, keyed the same as var.synapse_sql_pool_workload_classifiers"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "synapse_sql_pool_workload_classifiers_start_time" {
  description = "Map of start_time values across all synapse_sql_pool_workload_classifiers, keyed the same as var.synapse_sql_pool_workload_classifiers"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : k => v.start_time if v.start_time != null && length(v.start_time) > 0 }
}
output "synapse_sql_pool_workload_classifiers_workload_group_id" {
  description = "Map of workload_group_id values across all synapse_sql_pool_workload_classifiers, keyed the same as var.synapse_sql_pool_workload_classifiers"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : k => v.workload_group_id if v.workload_group_id != null && length(v.workload_group_id) > 0 }
}

