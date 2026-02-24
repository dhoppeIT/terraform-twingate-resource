variable "address" {
  type        = string
  description = "The Resource's IP/CIDR or FQDN/DNS zone"
}

variable "name" {
  type        = string
  description = "The name of the Resource"
}

variable "remote_network_id" {
  type        = string
  description = "Remote Network ID where the Resource lives"
}

variable "access_group" {
  type        = map(any)
  default     = {}
  description = "Restrict access to certain group"
}

variable "access_service" {
  type        = map(any)
  default     = {}
  description = "Restrict access to certain service account"
}

variable "alias" {
  type        = string
  default     = null
  description = "Set a DNS alias address for the Resource"
}

variable "is_active" {
  type        = bool
  default     = true
  description = "Set the resource as active or inactive"
}

variable "is_authoritative" {
  type        = bool
  default     = true
  description = "Determines whether assignments in the access block will override any existing assignments"
}

variable "is_browser_shortcut_enabled" {
  type        = bool
  default     = false
  description = "Controls whether an 'Open in Browser' shortcut will be shown for this Resource in the Twingate Client"
}

variable "is_visible" {
  type        = bool
  default     = true
  description = "Controls whether this Resource will be visible in the main Resource list in the Twingate Client"
}

variable "protocols" {
  type = object(
    {
      allow_icmp = optional(bool)
      tcp = optional(object(
        {
          policy = optional(string)
          ports  = optional(list(string))
        }
      ))
      udp = optional(object(
        {
          policy = optional(string)
          ports  = optional(list(string))
        }
      ))
    }
  )
  default     = {}
  description = "Restrict access to certain protocols and ports"
}

variable "security_policy_id" {
  type        = string
  default     = "Default Policy"
  description = "The ID of a twingate_security_policy to set as this Resource's Security Policy"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "A map of key-value pair tags to set on this resource"
}
