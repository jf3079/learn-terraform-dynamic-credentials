terraform {
  cloud {
    organization = "KuTest"

    workspaces {
      name = "CAN1-Prod"
    }
  }
}
