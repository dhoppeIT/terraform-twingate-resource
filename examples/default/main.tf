module "twingate_resource" {
  source = "../../"

  name              = "example-resource"
  address           = "example.com"
  remote_network_id = data.twingate_remote_network.this.id

  access_group = {
    group_id = data.twingate_groups.this.groups[0].id
  }

  protocols = {
    tcp = {
      policy = "RESTRICTED"
      ports  = ["22"]
    }
    udp = {
      policy = "DENY_ALL"
    }
  }
}
