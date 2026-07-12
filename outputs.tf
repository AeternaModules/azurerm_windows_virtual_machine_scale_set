output "windows_virtual_machine_scale_sets_id" {
  description = "Map of id values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.id }
}
output "windows_virtual_machine_scale_sets_additional_capabilities" {
  description = "Map of additional_capabilities values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.additional_capabilities }
}
output "windows_virtual_machine_scale_sets_additional_unattend_content" {
  description = "Map of additional_unattend_content values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.additional_unattend_content }
  sensitive   = true
}
output "windows_virtual_machine_scale_sets_admin_password" {
  description = "Map of admin_password values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.admin_password }
  sensitive   = true
}
output "windows_virtual_machine_scale_sets_admin_username" {
  description = "Map of admin_username values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.admin_username }
}
output "windows_virtual_machine_scale_sets_automatic_instance_repair" {
  description = "Map of automatic_instance_repair values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.automatic_instance_repair }
}
output "windows_virtual_machine_scale_sets_automatic_os_upgrade_policy" {
  description = "Map of automatic_os_upgrade_policy values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.automatic_os_upgrade_policy }
}
output "windows_virtual_machine_scale_sets_boot_diagnostics" {
  description = "Map of boot_diagnostics values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.boot_diagnostics }
}
output "windows_virtual_machine_scale_sets_capacity_reservation_group_id" {
  description = "Map of capacity_reservation_group_id values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.capacity_reservation_group_id }
}
output "windows_virtual_machine_scale_sets_computer_name_prefix" {
  description = "Map of computer_name_prefix values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.computer_name_prefix }
}
output "windows_virtual_machine_scale_sets_custom_data" {
  description = "Map of custom_data values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.custom_data }
  sensitive   = true
}
output "windows_virtual_machine_scale_sets_data_disk" {
  description = "Map of data_disk values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.data_disk }
}
output "windows_virtual_machine_scale_sets_do_not_run_extensions_on_overprovisioned_machines" {
  description = "Map of do_not_run_extensions_on_overprovisioned_machines values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.do_not_run_extensions_on_overprovisioned_machines }
}
output "windows_virtual_machine_scale_sets_edge_zone" {
  description = "Map of edge_zone values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.edge_zone }
}
output "windows_virtual_machine_scale_sets_enable_automatic_updates" {
  description = "Map of enable_automatic_updates values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.enable_automatic_updates }
}
output "windows_virtual_machine_scale_sets_encryption_at_host_enabled" {
  description = "Map of encryption_at_host_enabled values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.encryption_at_host_enabled }
}
output "windows_virtual_machine_scale_sets_eviction_policy" {
  description = "Map of eviction_policy values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.eviction_policy }
}
output "windows_virtual_machine_scale_sets_extension" {
  description = "Map of extension values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.extension }
  sensitive   = true
}
output "windows_virtual_machine_scale_sets_extension_operations_enabled" {
  description = "Map of extension_operations_enabled values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.extension_operations_enabled }
}
output "windows_virtual_machine_scale_sets_extensions_time_budget" {
  description = "Map of extensions_time_budget values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.extensions_time_budget }
}
output "windows_virtual_machine_scale_sets_gallery_application" {
  description = "Map of gallery_application values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.gallery_application }
}
output "windows_virtual_machine_scale_sets_health_probe_id" {
  description = "Map of health_probe_id values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.health_probe_id }
}
output "windows_virtual_machine_scale_sets_host_group_id" {
  description = "Map of host_group_id values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.host_group_id }
}
output "windows_virtual_machine_scale_sets_identity" {
  description = "Map of identity values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.identity }
}
output "windows_virtual_machine_scale_sets_instances" {
  description = "Map of instances values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.instances }
}
output "windows_virtual_machine_scale_sets_license_type" {
  description = "Map of license_type values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.license_type }
}
output "windows_virtual_machine_scale_sets_location" {
  description = "Map of location values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.location }
}
output "windows_virtual_machine_scale_sets_max_bid_price" {
  description = "Map of max_bid_price values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.max_bid_price }
}
output "windows_virtual_machine_scale_sets_name" {
  description = "Map of name values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.name }
}
output "windows_virtual_machine_scale_sets_network_interface" {
  description = "Map of network_interface values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.network_interface }
}
output "windows_virtual_machine_scale_sets_os_disk" {
  description = "Map of os_disk values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.os_disk }
}
output "windows_virtual_machine_scale_sets_overprovision" {
  description = "Map of overprovision values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.overprovision }
}
output "windows_virtual_machine_scale_sets_plan" {
  description = "Map of plan values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.plan }
}
output "windows_virtual_machine_scale_sets_platform_fault_domain_count" {
  description = "Map of platform_fault_domain_count values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.platform_fault_domain_count }
}
output "windows_virtual_machine_scale_sets_priority" {
  description = "Map of priority values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.priority }
}
output "windows_virtual_machine_scale_sets_provision_vm_agent" {
  description = "Map of provision_vm_agent values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.provision_vm_agent }
}
output "windows_virtual_machine_scale_sets_proximity_placement_group_id" {
  description = "Map of proximity_placement_group_id values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.proximity_placement_group_id }
}
output "windows_virtual_machine_scale_sets_resilient_vm_creation_enabled" {
  description = "Map of resilient_vm_creation_enabled values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.resilient_vm_creation_enabled }
}
output "windows_virtual_machine_scale_sets_resilient_vm_deletion_enabled" {
  description = "Map of resilient_vm_deletion_enabled values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.resilient_vm_deletion_enabled }
}
output "windows_virtual_machine_scale_sets_resource_group_name" {
  description = "Map of resource_group_name values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.resource_group_name }
}
output "windows_virtual_machine_scale_sets_rolling_upgrade_policy" {
  description = "Map of rolling_upgrade_policy values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.rolling_upgrade_policy }
}
output "windows_virtual_machine_scale_sets_scale_in" {
  description = "Map of scale_in values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.scale_in }
}
output "windows_virtual_machine_scale_sets_secret" {
  description = "Map of secret values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.secret }
}
output "windows_virtual_machine_scale_sets_secure_boot_enabled" {
  description = "Map of secure_boot_enabled values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.secure_boot_enabled }
}
output "windows_virtual_machine_scale_sets_single_placement_group" {
  description = "Map of single_placement_group values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.single_placement_group }
}
output "windows_virtual_machine_scale_sets_sku" {
  description = "Map of sku values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.sku }
}
output "windows_virtual_machine_scale_sets_source_image_id" {
  description = "Map of source_image_id values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.source_image_id }
}
output "windows_virtual_machine_scale_sets_source_image_reference" {
  description = "Map of source_image_reference values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.source_image_reference }
}
output "windows_virtual_machine_scale_sets_spot_restore" {
  description = "Map of spot_restore values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.spot_restore }
}
output "windows_virtual_machine_scale_sets_tags" {
  description = "Map of tags values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.tags }
}
output "windows_virtual_machine_scale_sets_termination_notification" {
  description = "Map of termination_notification values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.termination_notification }
}
output "windows_virtual_machine_scale_sets_timezone" {
  description = "Map of timezone values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.timezone }
}
output "windows_virtual_machine_scale_sets_unique_id" {
  description = "Map of unique_id values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.unique_id }
}
output "windows_virtual_machine_scale_sets_upgrade_mode" {
  description = "Map of upgrade_mode values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.upgrade_mode }
}
output "windows_virtual_machine_scale_sets_user_data" {
  description = "Map of user_data values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.user_data }
}
output "windows_virtual_machine_scale_sets_vtpm_enabled" {
  description = "Map of vtpm_enabled values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.vtpm_enabled }
}
output "windows_virtual_machine_scale_sets_winrm_listener" {
  description = "Map of winrm_listener values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.winrm_listener }
}
output "windows_virtual_machine_scale_sets_zone_balance" {
  description = "Map of zone_balance values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.zone_balance }
}
output "windows_virtual_machine_scale_sets_zones" {
  description = "Map of zones values across all windows_virtual_machine_scale_sets, keyed the same as var.windows_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : k => v.zones }
}

