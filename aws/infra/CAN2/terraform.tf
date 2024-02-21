terraform {
  cloud {
    organization = "KuTest"

    workspaces {
      name = "CAN2-Prod"
    }
  }
}
