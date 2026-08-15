output "windows_virtual_machine_scale_sets_id" {
  description = "Map of id values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "windows_virtual_machine_scale_sets_additional_capabilities" {
  description = "Map of additional_capabilities values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => one(v.additional_capabilities) if v.additional_capabilities != null && length(v.additional_capabilities) > 0 }
}
output "windows_virtual_machine_scale_sets_additional_unattend_content" {
  description = "Map of additional_unattend_content values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.additional_unattend_content if v.additional_unattend_content != null && length(v.additional_unattend_content) > 0 }
  sensitive   = true
}
output "windows_virtual_machine_scale_sets_admin_password" {
  description = "Map of admin_password values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.admin_password if v.admin_password != null && length(v.admin_password) > 0 }
  sensitive   = true
}
output "windows_virtual_machine_scale_sets_admin_username" {
  description = "Map of admin_username values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.admin_username if v.admin_username != null && length(v.admin_username) > 0 }
}
output "windows_virtual_machine_scale_sets_automatic_instance_repair" {
  description = "Map of automatic_instance_repair values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => one(v.automatic_instance_repair) if v.automatic_instance_repair != null && length(v.automatic_instance_repair) > 0 }
}
output "windows_virtual_machine_scale_sets_automatic_os_upgrade_policy" {
  description = "Map of automatic_os_upgrade_policy values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => one(v.automatic_os_upgrade_policy) if v.automatic_os_upgrade_policy != null && length(v.automatic_os_upgrade_policy) > 0 }
}
output "windows_virtual_machine_scale_sets_automatic_updates_enabled" {
  description = "Map of automatic_updates_enabled values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.automatic_updates_enabled if v.automatic_updates_enabled != null }
}
output "windows_virtual_machine_scale_sets_boot_diagnostics" {
  description = "Map of boot_diagnostics values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => one(v.boot_diagnostics) if v.boot_diagnostics != null && length(v.boot_diagnostics) > 0 }
}
output "windows_virtual_machine_scale_sets_capacity_reservation_group_id" {
  description = "Map of capacity_reservation_group_id values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.capacity_reservation_group_id if v.capacity_reservation_group_id != null && length(v.capacity_reservation_group_id) > 0 }
}
output "windows_virtual_machine_scale_sets_computer_name_prefix" {
  description = "Map of computer_name_prefix values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.computer_name_prefix if v.computer_name_prefix != null && length(v.computer_name_prefix) > 0 }
}
output "windows_virtual_machine_scale_sets_custom_data" {
  description = "Map of custom_data values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.custom_data if v.custom_data != null && length(v.custom_data) > 0 }
  sensitive   = true
}
output "windows_virtual_machine_scale_sets_data_disk" {
  description = "Map of data_disk values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.data_disk if v.data_disk != null && length(v.data_disk) > 0 }
}
output "windows_virtual_machine_scale_sets_do_not_run_extensions_on_overprovisioned_machines" {
  description = "Map of do_not_run_extensions_on_overprovisioned_machines values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.do_not_run_extensions_on_overprovisioned_machines if v.do_not_run_extensions_on_overprovisioned_machines != null }
}
output "windows_virtual_machine_scale_sets_edge_zone" {
  description = "Map of edge_zone values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.edge_zone if v.edge_zone != null && length(v.edge_zone) > 0 }
}
output "windows_virtual_machine_scale_sets_encryption_at_host_enabled" {
  description = "Map of encryption_at_host_enabled values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.encryption_at_host_enabled if v.encryption_at_host_enabled != null }
}
output "windows_virtual_machine_scale_sets_eviction_policy" {
  description = "Map of eviction_policy values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.eviction_policy if v.eviction_policy != null && length(v.eviction_policy) > 0 }
}
output "windows_virtual_machine_scale_sets_extension" {
  description = "Map of extension values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.extension if v.extension != null && length(v.extension) > 0 }
  sensitive   = true
}
output "windows_virtual_machine_scale_sets_extension_operations_enabled" {
  description = "Map of extension_operations_enabled values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.extension_operations_enabled if v.extension_operations_enabled != null }
}
output "windows_virtual_machine_scale_sets_extensions_time_budget" {
  description = "Map of extensions_time_budget values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.extensions_time_budget if v.extensions_time_budget != null && length(v.extensions_time_budget) > 0 }
}
output "windows_virtual_machine_scale_sets_gallery_application" {
  description = "Map of gallery_application values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.gallery_application if v.gallery_application != null && length(v.gallery_application) > 0 }
}
output "windows_virtual_machine_scale_sets_health_probe_id" {
  description = "Map of health_probe_id values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.health_probe_id if v.health_probe_id != null && length(v.health_probe_id) > 0 }
}
output "windows_virtual_machine_scale_sets_host_group_id" {
  description = "Map of host_group_id values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.host_group_id if v.host_group_id != null && length(v.host_group_id) > 0 }
}
output "windows_virtual_machine_scale_sets_identity" {
  description = "Map of identity values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => one(v.identity) if v.identity != null && length(v.identity) > 0 }
}
output "windows_virtual_machine_scale_sets_instances" {
  description = "Map of instances values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.instances if v.instances != null }
}
output "windows_virtual_machine_scale_sets_license_type" {
  description = "Map of license_type values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.license_type if v.license_type != null && length(v.license_type) > 0 }
}
output "windows_virtual_machine_scale_sets_location" {
  description = "Map of location values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.location if v.location != null && length(v.location) > 0 }
}
output "windows_virtual_machine_scale_sets_max_bid_price" {
  description = "Map of max_bid_price values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.max_bid_price if v.max_bid_price != null }
}
output "windows_virtual_machine_scale_sets_name" {
  description = "Map of name values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "windows_virtual_machine_scale_sets_network_interface" {
  description = "Map of network_interface values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.network_interface if v.network_interface != null && length(v.network_interface) > 0 }
}
output "windows_virtual_machine_scale_sets_os_disk" {
  description = "Map of os_disk values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => one(v.os_disk) if v.os_disk != null && length(v.os_disk) > 0 }
}
output "windows_virtual_machine_scale_sets_overprovision" {
  description = "Map of overprovision values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.overprovision if v.overprovision != null }
}
output "windows_virtual_machine_scale_sets_plan" {
  description = "Map of plan values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => one(v.plan) if v.plan != null && length(v.plan) > 0 }
}
output "windows_virtual_machine_scale_sets_platform_fault_domain_count" {
  description = "Map of platform_fault_domain_count values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.platform_fault_domain_count if v.platform_fault_domain_count != null }
}
output "windows_virtual_machine_scale_sets_priority" {
  description = "Map of priority values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.priority if v.priority != null && length(v.priority) > 0 }
}
output "windows_virtual_machine_scale_sets_provision_vm_agent" {
  description = "Map of provision_vm_agent values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.provision_vm_agent if v.provision_vm_agent != null }
}
output "windows_virtual_machine_scale_sets_proximity_placement_group_id" {
  description = "Map of proximity_placement_group_id values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.proximity_placement_group_id if v.proximity_placement_group_id != null && length(v.proximity_placement_group_id) > 0 }
}
output "windows_virtual_machine_scale_sets_resilient_vm_creation_enabled" {
  description = "Map of resilient_vm_creation_enabled values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.resilient_vm_creation_enabled if v.resilient_vm_creation_enabled != null }
}
output "windows_virtual_machine_scale_sets_resilient_vm_deletion_enabled" {
  description = "Map of resilient_vm_deletion_enabled values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.resilient_vm_deletion_enabled if v.resilient_vm_deletion_enabled != null }
}
output "windows_virtual_machine_scale_sets_resource_group_name" {
  description = "Map of resource_group_name values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "windows_virtual_machine_scale_sets_rolling_upgrade_policy" {
  description = "Map of rolling_upgrade_policy values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => one(v.rolling_upgrade_policy) if v.rolling_upgrade_policy != null && length(v.rolling_upgrade_policy) > 0 }
}
output "windows_virtual_machine_scale_sets_scale_in" {
  description = "Map of scale_in values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => one(v.scale_in) if v.scale_in != null && length(v.scale_in) > 0 }
}
output "windows_virtual_machine_scale_sets_secret" {
  description = "Map of secret values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.secret if v.secret != null && length(v.secret) > 0 }
}
output "windows_virtual_machine_scale_sets_secure_boot_enabled" {
  description = "Map of secure_boot_enabled values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.secure_boot_enabled if v.secure_boot_enabled != null }
}
output "windows_virtual_machine_scale_sets_single_placement_group" {
  description = "Map of single_placement_group values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.single_placement_group if v.single_placement_group != null }
}
output "windows_virtual_machine_scale_sets_sku" {
  description = "Map of sku values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.sku if v.sku != null && length(v.sku) > 0 }
}
output "windows_virtual_machine_scale_sets_source_image_id" {
  description = "Map of source_image_id values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.source_image_id if v.source_image_id != null && length(v.source_image_id) > 0 }
}
output "windows_virtual_machine_scale_sets_source_image_reference" {
  description = "Map of source_image_reference values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => one(v.source_image_reference) if v.source_image_reference != null && length(v.source_image_reference) > 0 }
}
output "windows_virtual_machine_scale_sets_spot_restore" {
  description = "Map of spot_restore values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => one(v.spot_restore) if v.spot_restore != null && length(v.spot_restore) > 0 }
}
output "windows_virtual_machine_scale_sets_tags" {
  description = "Map of tags values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "windows_virtual_machine_scale_sets_termination_notification" {
  description = "Map of termination_notification values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => one(v.termination_notification) if v.termination_notification != null && length(v.termination_notification) > 0 }
}
output "windows_virtual_machine_scale_sets_timezone" {
  description = "Map of timezone values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.timezone if v.timezone != null && length(v.timezone) > 0 }
}
output "windows_virtual_machine_scale_sets_unique_id" {
  description = "Map of unique_id values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.unique_id if v.unique_id != null && length(v.unique_id) > 0 }
}
output "windows_virtual_machine_scale_sets_upgrade_mode" {
  description = "Map of upgrade_mode values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.upgrade_mode if v.upgrade_mode != null && length(v.upgrade_mode) > 0 }
}
output "windows_virtual_machine_scale_sets_user_data" {
  description = "Map of user_data values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.user_data if v.user_data != null && length(v.user_data) > 0 }
}
output "windows_virtual_machine_scale_sets_vtpm_enabled" {
  description = "Map of vtpm_enabled values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.vtpm_enabled if v.vtpm_enabled != null }
}
output "windows_virtual_machine_scale_sets_winrm_listener" {
  description = "Map of winrm_listener values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.winrm_listener if v.winrm_listener != null && length(v.winrm_listener) > 0 }
}
output "windows_virtual_machine_scale_sets_zone_balance" {
  description = "Map of zone_balance values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.zone_balance if v.zone_balance != null }
}
output "windows_virtual_machine_scale_sets_zones" {
  description = "Map of zones values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.zones if v.zones != null && length(v.zones) > 0 }
}

