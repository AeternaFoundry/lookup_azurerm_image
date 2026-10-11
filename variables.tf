variable "image_lookup" {
  description = <<EOT
Map of image_lookup, attributes below
Required:
    - resource_group_name
Optional:
    - name
    - name_regex
    - sort_descending
EOT

  type = map(object({
    resource_group_name = string
    name                = optional(string)
    name_regex          = optional(string)
    sort_descending     = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.image_lookup : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.image_lookup : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.image_lookup : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

