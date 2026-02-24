resource "twingate_resource" "this" {
  address           = var.address
  name              = var.name
  remote_network_id = var.remote_network_id

  alias                       = var.alias
  is_active                   = var.is_active
  is_authoritative            = var.is_authoritative
  is_browser_shortcut_enabled = var.is_browser_shortcut_enabled
  is_visible                  = var.is_visible
  security_policy_id          = data.twingate_security_policy.this.id

  dynamic "access_group" {
    for_each = length(var.access_group) > 0 ? [var.access_group] : []

    content {
      group_id           = lookup(access_group.value, "group_id", null)
      security_policy_id = lookup(access_group.value, "security_policy_id", null)
    }
  }

  dynamic "access_service" {
    for_each = length(var.access_service) > 0 ? [var.access_service] : []

    content {
      service_account_id = lookup(access_service.value, "service_account_id", null)
    }
  }

  protocols = {
    allow_icmp = try(var.protocols["allow_icmp"], true)
    tcp        = try(var.protocols["tcp"], {})
    udp        = try(var.protocols["udp"], {})
  }
}
