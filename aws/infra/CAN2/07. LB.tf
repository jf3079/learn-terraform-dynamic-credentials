locals {
  nlb_int = {
    "Test-cde" = {
      vpc             = "cde"
      target          = ["Test_cde01", "", "", ]
      port            = ["80", "1610", "1620", ]
      inbound_allowed = ["0.0.0.0/0", ]
    }
    "Test-prod" = {
      vpc             = "prod"
      target          = ["10.122.7.173", "", "", ]
      port            = ["80"]
      inbound_allowed = ["0.0.0.0/0", ]
    }
  }

  nlb_ext = {
    "Test-prod-ext" = {
      vpc             = "prod"
      target          = ["10.122.7.173", "", "", ]
      port            = ["80"]
      inbound_allowed = ["0.0.0.0/0", ]
      internal        = "false"
    }
  }
}