output "image_lookup_id" {
  description = "Map of id values across all image_lookup, keyed the same as var.image_lookup"
  value       = { for k, v in data.azurerm_image.image_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "image_lookup_data_disk" {
  description = "Map of data_disk values across all image_lookup, keyed the same as var.image_lookup"
  value       = { for k, v in data.azurerm_image.image_lookup : k => v.data_disk if v.data_disk != null && length(v.data_disk) > 0 }
}
output "image_lookup_location" {
  description = "Map of location values across all image_lookup, keyed the same as var.image_lookup"
  value       = { for k, v in data.azurerm_image.image_lookup : k => v.location if v.location != null && length(v.location) > 0 }
}
output "image_lookup_name" {
  description = "Map of name values across all image_lookup, keyed the same as var.image_lookup"
  value       = { for k, v in data.azurerm_image.image_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "image_lookup_name_regex" {
  description = "Map of name_regex values across all image_lookup, keyed the same as var.image_lookup"
  value       = { for k, v in data.azurerm_image.image_lookup : k => v.name_regex if v.name_regex != null && length(v.name_regex) > 0 }
}
output "image_lookup_os_disk" {
  description = "Map of os_disk values across all image_lookup, keyed the same as var.image_lookup"
  value       = { for k, v in data.azurerm_image.image_lookup : k => v.os_disk if v.os_disk != null && length(v.os_disk) > 0 }
}
output "image_lookup_resource_group_name" {
  description = "Map of resource_group_name values across all image_lookup, keyed the same as var.image_lookup"
  value       = { for k, v in data.azurerm_image.image_lookup : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "image_lookup_sort_descending" {
  description = "Map of sort_descending values across all image_lookup, keyed the same as var.image_lookup"
  value       = { for k, v in data.azurerm_image.image_lookup : k => v.sort_descending if v.sort_descending != null }
}
output "image_lookup_tags" {
  description = "Map of tags values across all image_lookup, keyed the same as var.image_lookup"
  value       = { for k, v in data.azurerm_image.image_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "image_lookup_zone_resilient" {
  description = "Map of zone_resilient values across all image_lookup, keyed the same as var.image_lookup"
  value       = { for k, v in data.azurerm_image.image_lookup : k => v.zone_resilient if v.zone_resilient != null }
}

