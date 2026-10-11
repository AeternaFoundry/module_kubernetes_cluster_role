output "cluster_roles_id" {
  description = "Map of id values across all cluster_roles, keyed the same as var.cluster_roles except keys with no id are omitted"
  value       = { for k, v in kubernetes_cluster_role.cluster_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cluster_roles_aggregation_rule" {
  description = "Map of aggregation_rule values across all cluster_roles, keyed the same as var.cluster_roles except keys with no aggregation_rule are omitted"
  value       = { for k, v in kubernetes_cluster_role.cluster_roles : k => one(v.aggregation_rule) if v.aggregation_rule != null && length(v.aggregation_rule) > 0 }
}
output "cluster_roles_metadata" {
  description = "Map of metadata values across all cluster_roles, keyed the same as var.cluster_roles except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_cluster_role.cluster_roles : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "cluster_roles_rule" {
  description = "Map of rule values across all cluster_roles, keyed the same as var.cluster_roles except keys with no rule are omitted"
  value       = { for k, v in kubernetes_cluster_role.cluster_roles : k => v.rule if v.rule != null && length(v.rule) > 0 }
}

