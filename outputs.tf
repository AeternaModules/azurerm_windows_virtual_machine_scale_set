output "windows_virtual_machine_scale_sets" {
  description = "All windows_virtual_machine_scale_set resources"
  value       = azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets
  sensitive   = true
}
output "windows_virtual_machine_scale_sets_additional_capabilities" {
  description = "List of additional_capabilities values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.additional_capabilities]
}
output "windows_virtual_machine_scale_sets_additional_unattend_content" {
  description = "List of additional_unattend_content values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.additional_unattend_content]
  sensitive   = true
}
output "windows_virtual_machine_scale_sets_admin_password" {
  description = "List of admin_password values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.admin_password]
  sensitive   = true
}
output "windows_virtual_machine_scale_sets_admin_username" {
  description = "List of admin_username values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.admin_username]
}
output "windows_virtual_machine_scale_sets_automatic_instance_repair" {
  description = "List of automatic_instance_repair values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.automatic_instance_repair]
}
output "windows_virtual_machine_scale_sets_automatic_os_upgrade_policy" {
  description = "List of automatic_os_upgrade_policy values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.automatic_os_upgrade_policy]
}
output "windows_virtual_machine_scale_sets_boot_diagnostics" {
  description = "List of boot_diagnostics values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.boot_diagnostics]
}
output "windows_virtual_machine_scale_sets_capacity_reservation_group_id" {
  description = "List of capacity_reservation_group_id values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.capacity_reservation_group_id]
}
output "windows_virtual_machine_scale_sets_computer_name_prefix" {
  description = "List of computer_name_prefix values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.computer_name_prefix]
}
output "windows_virtual_machine_scale_sets_custom_data" {
  description = "List of custom_data values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.custom_data]
  sensitive   = true
}
output "windows_virtual_machine_scale_sets_data_disk" {
  description = "List of data_disk values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.data_disk]
}
output "windows_virtual_machine_scale_sets_do_not_run_extensions_on_overprovisioned_machines" {
  description = "List of do_not_run_extensions_on_overprovisioned_machines values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.do_not_run_extensions_on_overprovisioned_machines]
}
output "windows_virtual_machine_scale_sets_edge_zone" {
  description = "List of edge_zone values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.edge_zone]
}
output "windows_virtual_machine_scale_sets_enable_automatic_updates" {
  description = "List of enable_automatic_updates values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.enable_automatic_updates]
}
output "windows_virtual_machine_scale_sets_encryption_at_host_enabled" {
  description = "List of encryption_at_host_enabled values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.encryption_at_host_enabled]
}
output "windows_virtual_machine_scale_sets_eviction_policy" {
  description = "List of eviction_policy values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.eviction_policy]
}
output "windows_virtual_machine_scale_sets_extension" {
  description = "List of extension values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.extension]
  sensitive   = true
}
output "windows_virtual_machine_scale_sets_extension_operations_enabled" {
  description = "List of extension_operations_enabled values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.extension_operations_enabled]
}
output "windows_virtual_machine_scale_sets_extensions_time_budget" {
  description = "List of extensions_time_budget values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.extensions_time_budget]
}
output "windows_virtual_machine_scale_sets_gallery_application" {
  description = "List of gallery_application values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.gallery_application]
}
output "windows_virtual_machine_scale_sets_health_probe_id" {
  description = "List of health_probe_id values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.health_probe_id]
}
output "windows_virtual_machine_scale_sets_host_group_id" {
  description = "List of host_group_id values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.host_group_id]
}
output "windows_virtual_machine_scale_sets_identity" {
  description = "List of identity values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.identity]
}
output "windows_virtual_machine_scale_sets_instances" {
  description = "List of instances values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.instances]
}
output "windows_virtual_machine_scale_sets_license_type" {
  description = "List of license_type values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.license_type]
}
output "windows_virtual_machine_scale_sets_location" {
  description = "List of location values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.location]
}
output "windows_virtual_machine_scale_sets_max_bid_price" {
  description = "List of max_bid_price values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.max_bid_price]
}
output "windows_virtual_machine_scale_sets_name" {
  description = "List of name values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.name]
}
output "windows_virtual_machine_scale_sets_network_interface" {
  description = "List of network_interface values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.network_interface]
}
output "windows_virtual_machine_scale_sets_os_disk" {
  description = "List of os_disk values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.os_disk]
}
output "windows_virtual_machine_scale_sets_overprovision" {
  description = "List of overprovision values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.overprovision]
}
output "windows_virtual_machine_scale_sets_plan" {
  description = "List of plan values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.plan]
}
output "windows_virtual_machine_scale_sets_platform_fault_domain_count" {
  description = "List of platform_fault_domain_count values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.platform_fault_domain_count]
}
output "windows_virtual_machine_scale_sets_priority" {
  description = "List of priority values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.priority]
}
output "windows_virtual_machine_scale_sets_provision_vm_agent" {
  description = "List of provision_vm_agent values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.provision_vm_agent]
}
output "windows_virtual_machine_scale_sets_proximity_placement_group_id" {
  description = "List of proximity_placement_group_id values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.proximity_placement_group_id]
}
output "windows_virtual_machine_scale_sets_resilient_vm_creation_enabled" {
  description = "List of resilient_vm_creation_enabled values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.resilient_vm_creation_enabled]
}
output "windows_virtual_machine_scale_sets_resilient_vm_deletion_enabled" {
  description = "List of resilient_vm_deletion_enabled values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.resilient_vm_deletion_enabled]
}
output "windows_virtual_machine_scale_sets_resource_group_name" {
  description = "List of resource_group_name values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.resource_group_name]
}
output "windows_virtual_machine_scale_sets_rolling_upgrade_policy" {
  description = "List of rolling_upgrade_policy values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.rolling_upgrade_policy]
}
output "windows_virtual_machine_scale_sets_scale_in" {
  description = "List of scale_in values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.scale_in]
}
output "windows_virtual_machine_scale_sets_secret" {
  description = "List of secret values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.secret]
}
output "windows_virtual_machine_scale_sets_secure_boot_enabled" {
  description = "List of secure_boot_enabled values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.secure_boot_enabled]
}
output "windows_virtual_machine_scale_sets_single_placement_group" {
  description = "List of single_placement_group values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.single_placement_group]
}
output "windows_virtual_machine_scale_sets_sku" {
  description = "List of sku values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.sku]
}
output "windows_virtual_machine_scale_sets_source_image_id" {
  description = "List of source_image_id values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.source_image_id]
}
output "windows_virtual_machine_scale_sets_source_image_reference" {
  description = "List of source_image_reference values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.source_image_reference]
}
output "windows_virtual_machine_scale_sets_spot_restore" {
  description = "List of spot_restore values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.spot_restore]
}
output "windows_virtual_machine_scale_sets_tags" {
  description = "List of tags values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.tags]
}
output "windows_virtual_machine_scale_sets_termination_notification" {
  description = "List of termination_notification values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.termination_notification]
}
output "windows_virtual_machine_scale_sets_timezone" {
  description = "List of timezone values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.timezone]
}
output "windows_virtual_machine_scale_sets_unique_id" {
  description = "List of unique_id values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.unique_id]
}
output "windows_virtual_machine_scale_sets_upgrade_mode" {
  description = "List of upgrade_mode values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.upgrade_mode]
}
output "windows_virtual_machine_scale_sets_user_data" {
  description = "List of user_data values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.user_data]
}
output "windows_virtual_machine_scale_sets_vtpm_enabled" {
  description = "List of vtpm_enabled values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.vtpm_enabled]
}
output "windows_virtual_machine_scale_sets_winrm_listener" {
  description = "List of winrm_listener values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.winrm_listener]
}
output "windows_virtual_machine_scale_sets_zone_balance" {
  description = "List of zone_balance values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.zone_balance]
}
output "windows_virtual_machine_scale_sets_zones" {
  description = "List of zones values across all windows_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_windows_virtual_machine_scale_set.windows_virtual_machine_scale_sets : v.zones]
}

