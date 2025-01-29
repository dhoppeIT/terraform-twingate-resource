terraform {
  required_providers {
    twingate = {
      source  = "twingate/twingate"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.0"
}
