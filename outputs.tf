output "autoscaling_traffic_source_attachments_id" {
  description = "Map of id values across all autoscaling_traffic_source_attachments, keyed the same as var.autoscaling_traffic_source_attachments"
  value       = { for k, v in aws_autoscaling_traffic_source_attachment.autoscaling_traffic_source_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "autoscaling_traffic_source_attachments_autoscaling_group_name" {
  description = "Map of autoscaling_group_name values across all autoscaling_traffic_source_attachments, keyed the same as var.autoscaling_traffic_source_attachments"
  value       = { for k, v in aws_autoscaling_traffic_source_attachment.autoscaling_traffic_source_attachments : k => v.autoscaling_group_name if v.autoscaling_group_name != null && length(v.autoscaling_group_name) > 0 }
}
output "autoscaling_traffic_source_attachments_region" {
  description = "Map of region values across all autoscaling_traffic_source_attachments, keyed the same as var.autoscaling_traffic_source_attachments"
  value       = { for k, v in aws_autoscaling_traffic_source_attachment.autoscaling_traffic_source_attachments : k => v.region if v.region != null && length(v.region) > 0 }
}
output "autoscaling_traffic_source_attachments_traffic_source" {
  description = "Map of traffic_source values across all autoscaling_traffic_source_attachments, keyed the same as var.autoscaling_traffic_source_attachments"
  value       = { for k, v in aws_autoscaling_traffic_source_attachment.autoscaling_traffic_source_attachments : k => one(v.traffic_source) if v.traffic_source != null && length(v.traffic_source) > 0 }
}

