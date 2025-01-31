provider "twingate" {
  url            = var.url
  api_token      = var.api_token
  network        = var.network
  http_max_retry = var.http_max_retry
  http_timeout   = var.http_timeout
}
