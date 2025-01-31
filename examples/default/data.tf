data "twingate_groups" "this" {
  name = "Everyone"
}

data "twingate_remote_network" "this" {
  name = "example-network"
}
