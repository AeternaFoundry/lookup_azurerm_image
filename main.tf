data "azurerm_image" "image_lookup" {
  for_each = var.image_lookup

  resource_group_name = each.value.resource_group_name
  name                = each.value.name
  name_regex          = each.value.name_regex
  sort_descending     = each.value.sort_descending
}

