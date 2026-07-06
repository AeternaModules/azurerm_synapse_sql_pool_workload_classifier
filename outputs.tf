output "synapse_sql_pool_workload_classifiers" {
  description = "All synapse_sql_pool_workload_classifier resources"
  value       = azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers
}
output "synapse_sql_pool_workload_classifiers_context" {
  description = "List of context values across all synapse_sql_pool_workload_classifiers"
  value       = [for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : v.context]
}
output "synapse_sql_pool_workload_classifiers_end_time" {
  description = "List of end_time values across all synapse_sql_pool_workload_classifiers"
  value       = [for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : v.end_time]
}
output "synapse_sql_pool_workload_classifiers_importance" {
  description = "List of importance values across all synapse_sql_pool_workload_classifiers"
  value       = [for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : v.importance]
}
output "synapse_sql_pool_workload_classifiers_label" {
  description = "List of label values across all synapse_sql_pool_workload_classifiers"
  value       = [for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : v.label]
}
output "synapse_sql_pool_workload_classifiers_member_name" {
  description = "List of member_name values across all synapse_sql_pool_workload_classifiers"
  value       = [for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : v.member_name]
}
output "synapse_sql_pool_workload_classifiers_name" {
  description = "List of name values across all synapse_sql_pool_workload_classifiers"
  value       = [for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : v.name]
}
output "synapse_sql_pool_workload_classifiers_start_time" {
  description = "List of start_time values across all synapse_sql_pool_workload_classifiers"
  value       = [for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : v.start_time]
}
output "synapse_sql_pool_workload_classifiers_workload_group_id" {
  description = "List of workload_group_id values across all synapse_sql_pool_workload_classifiers"
  value       = [for k, v in azurerm_synapse_sql_pool_workload_classifier.synapse_sql_pool_workload_classifiers : v.workload_group_id]
}

