locals {
  nlb_int = {

  }

  nlb_ext = {

  }
}

/*################VSample for Internal NLB ################
    "Test-cde" = {
      vpc             = "cde"
      target          = ["Test_cde01", "", "", ]
      port            = ["80", "1610", "1620", ]
      inbound_allowed = ["0.0.0.0/0", ]
    }
    "Test-prod" = {
      vpc             = "prod"
      target          = ["10.222.7.174", "", "", ]
      port            = ["80"]
      inbound_allowed = ["0.0.0.0/0", ]
    }

################VSample for External NLB ################
    "Test-prod-ext" = {
      vpc             = "prod"
      target          = ["10.222.7.174", "", "", ]
      port            = ["80"]
      inbound_allowed = ["0.0.0.0/0", ]
      internal        = "false"
    }
*/