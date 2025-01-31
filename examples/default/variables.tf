variable "api_token" {
  type        = string
  sensitive   = true
  default     = null
  description = "The access key for API operations"
}

variable "http_max_retry" {
  type        = number
  default     = 10
  description = "Specifies a retry limit for the http requests made"
}

variable "http_timeout" {
  type        = number
  default     = 35
  description = "Specifies a time limit in seconds for the http requests made"
}

variable "network" {
  type        = string
  default     = null
  description = "Your Twingate network ID for API operations"
}

variable "url" {
  type        = string
  default     = "twingate.com"
  description = "This is optional and shouldn't be changed under normal circumstances"
}
