output "synapse_sql_pool_workload_classifiers_id" {
  description = "Map of id values across all synapse_sql_pool_workload_classifiers, keyed the same as var.synapse_sql_pool_workload_classifiers"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : k => v.id }
}
output "synapse_sql_pool_workload_classifiers_context" {
  description = "Map of context values across all synapse_sql_pool_workload_classifiers, keyed the same as var.synapse_sql_pool_workload_classifiers"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : k => v.context }
}
output "synapse_sql_pool_workload_classifiers_end_time" {
  description = "Map of end_time values across all synapse_sql_pool_workload_classifiers, keyed the same as var.synapse_sql_pool_workload_classifiers"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : k => v.end_time }
}
output "synapse_sql_pool_workload_classifiers_importance" {
  description = "Map of importance values across all synapse_sql_pool_workload_classifiers, keyed the same as var.synapse_sql_pool_workload_classifiers"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : k => v.importance }
}
output "synapse_sql_pool_workload_classifiers_label" {
  description = "Map of label values across all synapse_sql_pool_workload_classifiers, keyed the same as var.synapse_sql_pool_workload_classifiers"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : k => v.label }
}
output "synapse_sql_pool_workload_classifiers_member_name" {
  description = "Map of member_name values across all synapse_sql_pool_workload_classifiers, keyed the same as var.synapse_sql_pool_workload_classifiers"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : k => v.member_name }
}
output "synapse_sql_pool_workload_classifiers_name" {
  description = "Map of name values across all synapse_sql_pool_workload_classifiers, keyed the same as var.synapse_sql_pool_workload_classifiers"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : k => v.name }
}
output "synapse_sql_pool_workload_classifiers_start_time" {
  description = "Map of start_time values across all synapse_sql_pool_workload_classifiers, keyed the same as var.synapse_sql_pool_workload_classifiers"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : k => v.start_time }
}
output "synapse_sql_pool_workload_classifiers_workload_group_id" {
  description = "Map of workload_group_id values across all synapse_sql_pool_workload_classifiers, keyed the same as var.synapse_sql_pool_workload_classifiers"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : k => v.workload_group_id }
}

