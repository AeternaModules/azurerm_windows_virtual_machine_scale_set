data "azurerm_key_vault_secret" "admin_password" {
  for_each     = { for k, v in var.windows_virtual_machine_scale_sets : k => v if v.admin_password_key_vault_id != null && v.admin_password_key_vault_secret_name != null }
  name         = each.value.admin_password_key_vault_secret_name
  key_vault_id = each.value.admin_password_key_vault_id
}
data "azurerm_key_vault_secret" "custom_data" {
  for_each     = { for k, v in var.windows_virtual_machine_scale_sets : k => v if v.custom_data_key_vault_id != null && v.custom_data_key_vault_secret_name != null }
  name         = each.value.custom_data_key_vault_secret_name
  key_vault_id = each.value.custom_data_key_vault_id
}
resource "azurerm_windows_virtual_machine_scale_set" "windows_virtual_machine_scale_sets" {
  for_each = var.windows_virtual_machine_scale_sets

  admin_password                                    = each.value.admin_password != null ? each.value.admin_password : try(data.azurerm_key_vault_secret.admin_password[each.key].value, null)
  admin_username                                    = each.value.admin_username
  instances                                         = each.value.instances
  location                                          = each.value.location
  name                                              = each.value.name
  resource_group_name                               = each.value.resource_group_name
  sku                                               = each.value.sku
  provision_vm_agent                                = each.value.provision_vm_agent
  proximity_placement_group_id                      = each.value.proximity_placement_group_id
  resilient_vm_creation_enabled                     = each.value.resilient_vm_creation_enabled
  resilient_vm_deletion_enabled                     = each.value.resilient_vm_deletion_enabled
  secure_boot_enabled                               = each.value.secure_boot_enabled
  single_placement_group                            = each.value.single_placement_group
  timezone                                          = each.value.timezone
  tags                                              = each.value.tags
  priority                                          = each.value.priority
  upgrade_mode                                      = each.value.upgrade_mode
  user_data                                         = each.value.user_data
  vtpm_enabled                                      = each.value.vtpm_enabled
  source_image_id                                   = each.value.source_image_id
  platform_fault_domain_count                       = each.value.platform_fault_domain_count
  host_group_id                                     = each.value.host_group_id
  max_bid_price                                     = each.value.max_bid_price
  license_type                                      = each.value.license_type
  zone_balance                                      = each.value.zone_balance
  health_probe_id                                   = each.value.health_probe_id
  extensions_time_budget                            = each.value.extensions_time_budget
  extension_operations_enabled                      = each.value.extension_operations_enabled
  eviction_policy                                   = each.value.eviction_policy
  encryption_at_host_enabled                        = each.value.encryption_at_host_enabled
  enable_automatic_updates                          = each.value.enable_automatic_updates
  edge_zone                                         = each.value.edge_zone
  do_not_run_extensions_on_overprovisioned_machines = each.value.do_not_run_extensions_on_overprovisioned_machines
  custom_data                                       = each.value.custom_data != null ? each.value.custom_data : try(data.azurerm_key_vault_secret.custom_data[each.key].value, null)
  computer_name_prefix                              = each.value.computer_name_prefix
  capacity_reservation_group_id                     = each.value.capacity_reservation_group_id
  overprovision                                     = each.value.overprovision
  zones                                             = each.value.zones

  dynamic "network_interface" {
    for_each = each.value.network_interface
    content {
      auxiliary_mode                = network_interface.value.auxiliary_mode
      auxiliary_sku                 = network_interface.value.auxiliary_sku
      dns_servers                   = network_interface.value.dns_servers
      enable_accelerated_networking = network_interface.value.enable_accelerated_networking
      enable_ip_forwarding          = network_interface.value.enable_ip_forwarding
      dynamic "ip_configuration" {
        for_each = network_interface.value.ip_configuration
        content {
          application_gateway_backend_address_pool_ids = ip_configuration.value.application_gateway_backend_address_pool_ids
          application_security_group_ids               = ip_configuration.value.application_security_group_ids
          load_balancer_backend_address_pool_ids       = ip_configuration.value.load_balancer_backend_address_pool_ids
          load_balancer_inbound_nat_rules_ids          = ip_configuration.value.load_balancer_inbound_nat_rules_ids
          name                                         = ip_configuration.value.name
          primary                                      = ip_configuration.value.primary
          dynamic "public_ip_address" {
            for_each = ip_configuration.value.public_ip_address != null ? ip_configuration.value.public_ip_address : []
            content {
              domain_name_label       = public_ip_address.value.domain_name_label
              idle_timeout_in_minutes = public_ip_address.value.idle_timeout_in_minutes
              dynamic "ip_tag" {
                for_each = public_ip_address.value.ip_tag != null ? public_ip_address.value.ip_tag : []
                content {
                  tag  = ip_tag.value.tag
                  type = ip_tag.value.type
                }
              }
              name                = public_ip_address.value.name
              public_ip_prefix_id = public_ip_address.value.public_ip_prefix_id
              version             = public_ip_address.value.version
            }
          }
          subnet_id = ip_configuration.value.subnet_id
          version   = ip_configuration.value.version
        }
      }
      name                      = network_interface.value.name
      network_security_group_id = network_interface.value.network_security_group_id
      primary                   = network_interface.value.primary
    }
  }

  os_disk {
    caching = each.value.os_disk.caching
    dynamic "diff_disk_settings" {
      for_each = each.value.os_disk.diff_disk_settings != null ? [each.value.os_disk.diff_disk_settings] : []
      content {
        option    = diff_disk_settings.value.option
        placement = diff_disk_settings.value.placement
      }
    }
    disk_encryption_set_id           = each.value.os_disk.disk_encryption_set_id
    disk_size_gb                     = each.value.os_disk.disk_size_gb
    secure_vm_disk_encryption_set_id = each.value.os_disk.secure_vm_disk_encryption_set_id
    security_encryption_type         = each.value.os_disk.security_encryption_type
    storage_account_type             = each.value.os_disk.storage_account_type
    write_accelerator_enabled        = each.value.os_disk.write_accelerator_enabled
  }

  dynamic "additional_capabilities" {
    for_each = each.value.additional_capabilities != null ? [each.value.additional_capabilities] : []
    content {
      ultra_ssd_enabled = additional_capabilities.value.ultra_ssd_enabled
    }
  }

  dynamic "additional_unattend_content" {
    for_each = each.value.additional_unattend_content != null ? each.value.additional_unattend_content : []
    content {
      content = additional_unattend_content.value.content
      setting = additional_unattend_content.value.setting
    }
  }

  dynamic "automatic_instance_repair" {
    for_each = each.value.automatic_instance_repair != null ? [each.value.automatic_instance_repair] : []
    content {
      action       = automatic_instance_repair.value.action
      enabled      = automatic_instance_repair.value.enabled
      grace_period = automatic_instance_repair.value.grace_period
    }
  }

  dynamic "automatic_os_upgrade_policy" {
    for_each = each.value.automatic_os_upgrade_policy != null ? [each.value.automatic_os_upgrade_policy] : []
    content {
      disable_automatic_rollback  = automatic_os_upgrade_policy.value.disable_automatic_rollback
      enable_automatic_os_upgrade = automatic_os_upgrade_policy.value.enable_automatic_os_upgrade
    }
  }

  dynamic "boot_diagnostics" {
    for_each = each.value.boot_diagnostics != null ? [each.value.boot_diagnostics] : []
    content {
      storage_account_uri = boot_diagnostics.value.storage_account_uri
    }
  }

  dynamic "data_disk" {
    for_each = each.value.data_disk != null ? each.value.data_disk : []
    content {
      caching                        = data_disk.value.caching
      create_option                  = data_disk.value.create_option
      disk_encryption_set_id         = data_disk.value.disk_encryption_set_id
      disk_size_gb                   = data_disk.value.disk_size_gb
      lun                            = data_disk.value.lun
      name                           = data_disk.value.name
      storage_account_type           = data_disk.value.storage_account_type
      ultra_ssd_disk_iops_read_write = data_disk.value.ultra_ssd_disk_iops_read_write
      ultra_ssd_disk_mbps_read_write = data_disk.value.ultra_ssd_disk_mbps_read_write
      write_accelerator_enabled      = data_disk.value.write_accelerator_enabled
    }
  }

  dynamic "extension" {
    for_each = each.value.extension != null ? each.value.extension : []
    content {
      auto_upgrade_minor_version = extension.value.auto_upgrade_minor_version
      automatic_upgrade_enabled  = extension.value.automatic_upgrade_enabled
      force_update_tag           = extension.value.force_update_tag
      name                       = extension.value.name
      protected_settings         = extension.value.protected_settings
      dynamic "protected_settings_from_key_vault" {
        for_each = extension.value.protected_settings_from_key_vault != null ? [extension.value.protected_settings_from_key_vault] : []
        content {
          secret_url      = protected_settings_from_key_vault.value.secret_url
          source_vault_id = protected_settings_from_key_vault.value.source_vault_id
        }
      }
      provision_after_extensions = extension.value.provision_after_extensions
      publisher                  = extension.value.publisher
      settings                   = extension.value.settings
      type                       = extension.value.type
      type_handler_version       = extension.value.type_handler_version
    }
  }

  dynamic "gallery_application" {
    for_each = each.value.gallery_application != null ? each.value.gallery_application : []
    content {
      configuration_blob_uri = gallery_application.value.configuration_blob_uri
      order                  = gallery_application.value.order
      tag                    = gallery_application.value.tag
      version_id             = gallery_application.value.version_id
    }
  }

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      identity_ids = identity.value.identity_ids
      type         = identity.value.type
    }
  }

  dynamic "plan" {
    for_each = each.value.plan != null ? [each.value.plan] : []
    content {
      name      = plan.value.name
      product   = plan.value.product
      publisher = plan.value.publisher
    }
  }

  dynamic "rolling_upgrade_policy" {
    for_each = each.value.rolling_upgrade_policy != null ? [each.value.rolling_upgrade_policy] : []
    content {
      cross_zone_upgrades_enabled             = rolling_upgrade_policy.value.cross_zone_upgrades_enabled
      max_batch_instance_percent              = rolling_upgrade_policy.value.max_batch_instance_percent
      max_unhealthy_instance_percent          = rolling_upgrade_policy.value.max_unhealthy_instance_percent
      max_unhealthy_upgraded_instance_percent = rolling_upgrade_policy.value.max_unhealthy_upgraded_instance_percent
      maximum_surge_instances_enabled         = rolling_upgrade_policy.value.maximum_surge_instances_enabled
      pause_time_between_batches              = rolling_upgrade_policy.value.pause_time_between_batches
      prioritize_unhealthy_instances_enabled  = rolling_upgrade_policy.value.prioritize_unhealthy_instances_enabled
    }
  }

  dynamic "scale_in" {
    for_each = each.value.scale_in != null ? [each.value.scale_in] : []
    content {
      force_deletion_enabled = scale_in.value.force_deletion_enabled
      rule                   = scale_in.value.rule
    }
  }

  dynamic "secret" {
    for_each = each.value.secret != null ? each.value.secret : []
    content {
      dynamic "certificate" {
        for_each = secret.value.certificate
        content {
          store = certificate.value.store
          url   = certificate.value.url
        }
      }
      key_vault_id = secret.value.key_vault_id
    }
  }

  dynamic "source_image_reference" {
    for_each = each.value.source_image_reference != null ? [each.value.source_image_reference] : []
    content {
      offer     = source_image_reference.value.offer
      publisher = source_image_reference.value.publisher
      sku       = source_image_reference.value.sku
      version   = source_image_reference.value.version
    }
  }

  dynamic "spot_restore" {
    for_each = each.value.spot_restore != null ? [each.value.spot_restore] : []
    content {
      enabled = spot_restore.value.enabled
      timeout = spot_restore.value.timeout
    }
  }

  dynamic "termination_notification" {
    for_each = each.value.termination_notification != null ? [each.value.termination_notification] : []
    content {
      enabled = termination_notification.value.enabled
      timeout = termination_notification.value.timeout
    }
  }

  dynamic "winrm_listener" {
    for_each = each.value.winrm_listener != null ? each.value.winrm_listener : []
    content {
      certificate_url = winrm_listener.value.certificate_url
      protocol        = winrm_listener.value.protocol
    }
  }
}

