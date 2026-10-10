variable "autoscaling_traffic_source_attachments" {
  description = <<EOT
Map of autoscaling_traffic_source_attachments, attributes below
Required:
    - autoscaling_group_name
Optional:
    - region
    - traffic_source (block):
        - identifier (required)
        - type (required)
EOT

  type = map(object({
    autoscaling_group_name = string
    region                 = optional(string)
    traffic_source = optional(object({
      identifier = string
      type       = string
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

