terraform {
  required_providers {
    twingate = {
      source  = "twingate/twingate"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.0"
}
