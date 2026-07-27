variable "windows_virtual_machine_scale_sets" {
  description = <<EOT
Map of windows_virtual_machine_scale_sets, attributes below
Required:
    - admin_password
    - admin_password_key_vault_id (optional, alternative to admin_password)
    - admin_password_key_vault_secret_name (optional, alternative to admin_password)
    - admin_username
    - instances
    - location
    - name
    - resource_group_name
    - sku
    - network_interface (block):
        - auxiliary_mode (optional)
        - auxiliary_sku (optional)
        - dns_servers (optional)
        - enable_accelerated_networking (optional)
        - enable_ip_forwarding (optional)
        - ip_configuration (required, block):
            - application_gateway_backend_address_pool_ids (optional)
            - application_security_group_ids (optional)
            - load_balancer_backend_address_pool_ids (optional)
            - load_balancer_inbound_nat_rules_ids (optional)
            - name (required)
            - primary (optional)
            - public_ip_address (optional, block):
                - domain_name_label (optional)
                - idle_timeout_in_minutes (optional)
                - ip_tag (optional, block):
                    - tag (required)
                    - type (required)
                - name (required)
                - public_ip_prefix_id (optional)
                - version (optional)
            - subnet_id (optional)
            - version (optional)
        - name (required)
        - network_security_group_id (optional)
        - primary (optional)
    - os_disk (block):
        - caching (required)
        - diff_disk_settings (optional, block):
            - option (required)
            - placement (optional)
        - disk_encryption_set_id (optional)
        - disk_size_gb (optional)
        - secure_vm_disk_encryption_set_id (optional)
        - security_encryption_type (optional)
        - storage_account_type (required)
        - write_accelerator_enabled (optional)
Optional:
    - capacity_reservation_group_id
    - computer_name_prefix
    - custom_data
    - custom_data_key_vault_id (alternative to custom_data - read from Key Vault instead)
    - custom_data_key_vault_secret_name (alternative to custom_data - read from Key Vault instead)
    - do_not_run_extensions_on_overprovisioned_machines
    - edge_zone
    - enable_automatic_updates
    - encryption_at_host_enabled
    - eviction_policy
    - extension_operations_enabled
    - extensions_time_budget
    - health_probe_id
    - host_group_id
    - license_type
    - max_bid_price
    - overprovision
    - platform_fault_domain_count
    - priority
    - provision_vm_agent
    - proximity_placement_group_id
    - resilient_vm_creation_enabled
    - resilient_vm_deletion_enabled
    - secure_boot_enabled
    - single_placement_group
    - source_image_id
    - tags
    - timezone
    - upgrade_mode
    - user_data
    - vtpm_enabled
    - zone_balance
    - zones
    - additional_capabilities (block):
        - ultra_ssd_enabled (optional)
    - additional_unattend_content (block):
        - content (required)
        - setting (required)
    - automatic_instance_repair (block):
        - action (optional)
        - enabled (required)
        - grace_period (optional)
    - automatic_os_upgrade_policy (block):
        - disable_automatic_rollback (required)
        - enable_automatic_os_upgrade (required)
    - boot_diagnostics (block):
        - storage_account_uri (optional)
    - data_disk (block):
        - caching (required)
        - create_option (optional)
        - disk_encryption_set_id (optional)
        - disk_iops_read_write (optional)
        - disk_mbps_read_write (optional)
        - disk_size_gb (required)
        - lun (required)
        - name (optional)
        - storage_account_type (required)
        - ultra_ssd_disk_iops_read_write (optional)
        - ultra_ssd_disk_mbps_read_write (optional)
        - write_accelerator_enabled (optional)
    - extension (block):
        - auto_upgrade_minor_version (optional)
        - automatic_upgrade_enabled (optional)
        - force_update_tag (optional)
        - name (required)
        - protected_settings (optional)
        - protected_settings_from_key_vault (optional, block):
            - secret_url (required)
            - source_vault_id (required)
        - provision_after_extensions (optional)
        - publisher (required)
        - settings (optional)
        - type (required)
        - type_handler_version (required)
    - gallery_application (block):
        - configuration_blob_uri (optional)
        - order (optional)
        - tag (optional)
        - version_id (required)
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - plan (block):
        - name (required)
        - product (required)
        - publisher (required)
    - rolling_upgrade_policy (block):
        - cross_zone_upgrades_enabled (optional)
        - max_batch_instance_percent (required)
        - max_unhealthy_instance_percent (required)
        - max_unhealthy_upgraded_instance_percent (required)
        - maximum_surge_instances_enabled (optional)
        - pause_time_between_batches (required)
        - prioritize_unhealthy_instances_enabled (optional)
    - scale_in (block):
        - force_deletion_enabled (optional)
        - rule (optional)
    - secret (block):
        - certificate (required, block):
            - store (required)
            - url (required)
        - key_vault_id (required)
    - source_image_reference (block):
        - offer (required)
        - publisher (required)
        - sku (required)
        - version (required)
    - spot_restore (block):
        - enabled (optional)
        - timeout (optional)
    - termination_notification (block):
        - enabled (required)
        - timeout (optional)
    - winrm_listener (block):
        - certificate_url (optional)
        - protocol (required)
EOT

  type = map(object({
    admin_password                                    = string
    admin_password_key_vault_id                       = optional(string)
    admin_password_key_vault_secret_name              = optional(string)
    admin_username                                    = string
    instances                                         = number
    location                                          = string
    name                                              = string
    resource_group_name                               = string
    sku                                               = string
    provision_vm_agent                                = optional(bool)
    proximity_placement_group_id                      = optional(string)
    resilient_vm_creation_enabled                     = optional(bool)
    resilient_vm_deletion_enabled                     = optional(bool)
    secure_boot_enabled                               = optional(bool)
    single_placement_group                            = optional(bool)
    timezone                                          = optional(string)
    tags                                              = optional(map(string))
    priority                                          = optional(string)
    upgrade_mode                                      = optional(string)
    user_data                                         = optional(string)
    vtpm_enabled                                      = optional(bool)
    source_image_id                                   = optional(string)
    platform_fault_domain_count                       = optional(number)
    host_group_id                                     = optional(string)
    max_bid_price                                     = optional(number)
    license_type                                      = optional(string)
    zone_balance                                      = optional(bool)
    health_probe_id                                   = optional(string)
    extensions_time_budget                            = optional(string)
    extension_operations_enabled                      = optional(bool)
    eviction_policy                                   = optional(string)
    encryption_at_host_enabled                        = optional(bool)
    enable_automatic_updates                          = optional(bool)
    edge_zone                                         = optional(string)
    do_not_run_extensions_on_overprovisioned_machines = optional(bool)
    custom_data                                       = optional(string)
    custom_data_key_vault_id                          = optional(string)
    custom_data_key_vault_secret_name                 = optional(string)
    computer_name_prefix                              = optional(string)
    capacity_reservation_group_id                     = optional(string)
    overprovision                                     = optional(bool)
    zones                                             = optional(set(string))
    network_interface = list(object({
      auxiliary_mode                = optional(string)
      auxiliary_sku                 = optional(string)
      dns_servers                   = optional(list(string))
      enable_accelerated_networking = optional(bool)
      enable_ip_forwarding          = optional(bool)
      ip_configuration = list(object({
        application_gateway_backend_address_pool_ids = optional(set(string))
        application_security_group_ids               = optional(set(string))
        load_balancer_backend_address_pool_ids       = optional(set(string))
        load_balancer_inbound_nat_rules_ids          = optional(set(string))
        name                                         = string
        primary                                      = optional(bool)
        public_ip_address = optional(list(object({
          domain_name_label       = optional(string)
          idle_timeout_in_minutes = optional(number)
          ip_tag = optional(list(object({
            tag  = string
            type = string
          })))
          name                = string
          public_ip_prefix_id = optional(string)
          version             = optional(string)
        })))
        subnet_id = optional(string)
        version   = optional(string)
      }))
      name                      = string
      network_security_group_id = optional(string)
      primary                   = optional(bool)
    }))
    os_disk = object({
      caching = string
      diff_disk_settings = optional(object({
        option    = string
        placement = optional(string)
      }))
      disk_encryption_set_id           = optional(string)
      disk_size_gb                     = optional(number)
      secure_vm_disk_encryption_set_id = optional(string)
      security_encryption_type         = optional(string)
      storage_account_type             = string
      write_accelerator_enabled        = optional(bool)
    })
    spot_restore = optional(object({
      enabled = optional(bool)
      timeout = optional(string)
    }))
    source_image_reference = optional(object({
      offer     = string
      publisher = string
      sku       = string
      version   = string
    }))
    secret = optional(list(object({
      certificate = list(object({
        store = string
        url   = string
      }))
      key_vault_id = string
    })))
    scale_in = optional(object({
      force_deletion_enabled = optional(bool)
      rule                   = optional(string)
    }))
    rolling_upgrade_policy = optional(object({
      cross_zone_upgrades_enabled             = optional(bool)
      max_batch_instance_percent              = number
      max_unhealthy_instance_percent          = number
      max_unhealthy_upgraded_instance_percent = number
      maximum_surge_instances_enabled         = optional(bool)
      pause_time_between_batches              = string
      prioritize_unhealthy_instances_enabled  = optional(bool)
    }))
    plan = optional(object({
      name      = string
      product   = string
      publisher = string
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    gallery_application = optional(list(object({
      configuration_blob_uri = optional(string)
      order                  = optional(number)
      tag                    = optional(string)
      version_id             = string
    })))
    extension = optional(list(object({
      auto_upgrade_minor_version = optional(bool)
      automatic_upgrade_enabled  = optional(bool)
      force_update_tag           = optional(string)
      name                       = string
      protected_settings         = optional(string)
      protected_settings_from_key_vault = optional(object({
        secret_url      = string
        source_vault_id = string
      }))
      provision_after_extensions = optional(list(string))
      publisher                  = string
      settings                   = optional(string)
      type                       = string
      type_handler_version       = string
    })))
    data_disk = optional(list(object({
      caching                        = string
      create_option                  = optional(string)
      disk_encryption_set_id         = optional(string)
      disk_iops_read_write           = optional(number)
      disk_mbps_read_write           = optional(number)
      disk_size_gb                   = number
      lun                            = number
      name                           = optional(string)
      storage_account_type           = string
      ultra_ssd_disk_iops_read_write = optional(number)
      ultra_ssd_disk_mbps_read_write = optional(number)
      write_accelerator_enabled      = optional(bool)
    })))
    boot_diagnostics = optional(object({
      storage_account_uri = optional(string)
    }))
    automatic_os_upgrade_policy = optional(object({
      disable_automatic_rollback  = bool
      enable_automatic_os_upgrade = bool
    }))
    automatic_instance_repair = optional(object({
      action       = optional(string)
      enabled      = bool
      grace_period = optional(string)
    }))
    additional_unattend_content = optional(list(object({
      content = string
      setting = string
    })))
    additional_capabilities = optional(object({
      ultra_ssd_enabled = optional(bool)
    }))
    termination_notification = optional(object({
      enabled = bool
      timeout = optional(string)
    }))
    winrm_listener = optional(list(object({
      certificate_url = optional(string)
      protocol        = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.windows_virtual_machine_scale_sets : (
        length(v.network_interface) >= 1
      )
    ])
    error_message = "Each network_interface list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.windows_virtual_machine_scale_sets : (
        alltrue([for item in v.network_interface : (length(item.ip_configuration) >= 1)])
      )
    ])
    error_message = "Each ip_configuration list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.windows_virtual_machine_scale_sets : (
        v.gallery_application == null || (length(v.gallery_application) <= 100)
      )
    ])
    error_message = "Each gallery_application list must contain at most 100 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.windows_virtual_machine_scale_sets : (
        v.secret == null || alltrue([for item in v.secret : (length(item.certificate) >= 1)])
      )
    ])
    error_message = "Each certificate list must contain at least 1 items"
  }
}

