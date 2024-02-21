######################################## insp vpc Routing ####################################################
locals {
  insp-routes = {
    insp-secmgmt1 = {
      "0.0.0.0/0"      = aws_internet_gateway.igw["insp"].id
      "10.0.0.0/8"     = aws_ec2_transit_gateway.tgw.id
      "172.16.0.0/12"  = aws_ec2_transit_gateway.tgw.id
      "192.168.0.0/16" = aws_ec2_transit_gateway.tgw.id
    }
    insp-secmgmt2 = {
      "0.0.0.0/0"      = aws_internet_gateway.igw["insp"].id
      "10.0.0.0/8"     = aws_ec2_transit_gateway.tgw.id
      "172.16.0.0/12"  = aws_ec2_transit_gateway.tgw.id
      "192.168.0.0/16" = aws_ec2_transit_gateway.tgw.id
    }
    insp-tgweni1 = {
      #"0.0.0.0/0" = aws_nat_gateway.ngw["insp1"].id
    }
    insp-tgweni2 = {
      #"0.0.0.0/0" = aws_nat_gateway.ngw["insp2"].id
    }
    insp-gwlbe1 = {
      "10.0.0.0/8"     = aws_ec2_transit_gateway.tgw.id
      "172.16.0.0/12"  = aws_ec2_transit_gateway.tgw.id
      "192.168.0.0/16" = aws_ec2_transit_gateway.tgw.id
    }
    insp-gwlbe2 = {
      "10.0.0.0/8"     = aws_ec2_transit_gateway.tgw.id
      "172.16.0.0/12"  = aws_ec2_transit_gateway.tgw.id
      "192.168.0.0/16" = aws_ec2_transit_gateway.tgw.id
    }
    insp-gwlb1 = {

    }
    insp-gwlb2 = {

    }
    insp-fwinside1 = {
      "0.0.0.0/0"      = aws_internet_gateway.igw["insp"].id
      "10.0.0.0/8"     = aws_ec2_transit_gateway.tgw.id
      "172.16.0.0/12"  = aws_ec2_transit_gateway.tgw.id
      "192.168.0.0/16" = aws_ec2_transit_gateway.tgw.id
    }
    insp-fwinside2 = {
      "0.0.0.0/0"      = aws_internet_gateway.igw["insp"].id
      "10.0.0.0/8"     = aws_ec2_transit_gateway.tgw.id
      "172.16.0.0/12"  = aws_ec2_transit_gateway.tgw.id
      "192.168.0.0/16" = aws_ec2_transit_gateway.tgw.id
    }
    insp-fwoutside1 = {
      "0.0.0.0/0"      = aws_internet_gateway.igw["insp"].id
      "10.0.0.0/8"     = aws_ec2_transit_gateway.tgw.id
      "172.16.0.0/12"  = aws_ec2_transit_gateway.tgw.id
      "192.168.0.0/16" = aws_ec2_transit_gateway.tgw.id
    }
    insp-fwoutside2 = {
      "0.0.0.0/0"      = aws_internet_gateway.igw["insp"].id
      "10.0.0.0/8"     = aws_ec2_transit_gateway.tgw.id
      "172.16.0.0/12"  = aws_ec2_transit_gateway.tgw.id
      "192.168.0.0/16" = aws_ec2_transit_gateway.tgw.id
    }
    insp-waflb1 = {

    }
    insp-waflb2 = {

    }
    insp-public1 = {
      "0.0.0.0/0"      = aws_internet_gateway.igw["insp"].id
      "10.0.0.0/8"     = aws_ec2_transit_gateway.tgw.id
      "172.16.0.0/12"  = aws_ec2_transit_gateway.tgw.id
      "192.168.0.0/16" = aws_ec2_transit_gateway.tgw.id
    }
    insp-public2 = {
      "0.0.0.0/0"      = aws_internet_gateway.igw["insp"].id
      "10.0.0.0/8"     = aws_ec2_transit_gateway.tgw.id
      "172.16.0.0/12"  = aws_ec2_transit_gateway.tgw.id
      "192.168.0.0/16" = aws_ec2_transit_gateway.tgw.id
    }
  }
}

######################################## trns vpc Routing ####################################################
locals {
  trns-igw-routes = {
    trns-igw-rt = {

    }
  }
  trns-routes = {
    trns-tgweni1 = {

    }
    trns-tgweni2 = {

    }
    trns-fwep1 = {

    }
    trns-fwep2 = {

    }
    trns-subnet1 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["Trans1"].id
    }
    trns-subnet2 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["Trans2"].id
    }
    trns-subnet3 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["Trans1"].id
    }
    trns-subnet4 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["Trans2"].id
    }
    trns-subnet5 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["Trans1"].id
    }
    trns-subnet6 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["Trans2"].id
    }
    trns-subnet7 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["Trans1"].id
    }
    trns-subnet8 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["Trans2"].id
    }
    trns-dmz1 = { #10.101.101.0/24
      "0.0.0.0/0" = aws_internet_gateway.igw["trns"].id
    }
    trns-dmz2 = { #10.101.102.0/24
      "0.0.0.0/0" = aws_internet_gateway.igw["trns"].id
    }
    trns-protected1 = { #10.101.103.0/24
      "0.0.0.0/0" = aws_internet_gateway.igw["trns"].id
    }
    trns-protected2 = { #10.101.104.0/24
      "0.0.0.0/0" = aws_internet_gateway.igw["trns"].id
    }
  }
}

######################################## prod vpc Routing ####################################################
locals {
  prod-igw-routes = {
    prod-igw-rt = {

    }
  }
  prod-routes = {
    prod-tgweni1 = {

    }
    prod-tgweni2 = {

    }
    prod-fwep1 = {

    }
    prod-fwep2 = {

    }
    prod-subnet1 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["prod1"].id
    }
    prod-subnet2 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["prod2"].id
    }
    prod-subnet3 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["prod1"].id
    }
    prod-subnet4 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["prod2"].id
    }
    prod-subnet5 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["prod1"].id
    }
    prod-subnet6 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["prod2"].id
    }
    prod-subnet7 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["prod1"].id
    }
    prod-subnet8 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["prod2"].id
    }
    prod-dmz1 = { #10.101.101.0/24
      "0.0.0.0/0" = aws_internet_gateway.igw["prod"].id
    }
    prod-dmz2 = { #10.101.102.0/24
      "0.0.0.0/0" = aws_internet_gateway.igw["prod"].id
    }
    prod-protected1 = { #10.101.103.0/24
      "0.0.0.0/0" = aws_internet_gateway.igw["prod"].id
    }
    prod-protected2 = { #10.101.104.0/24
      "0.0.0.0/0" = aws_internet_gateway.igw["prod"].id
    }
  }
}

######################################## cde vpc Routing ####################################################
locals {
  cde-igw-routes = {
    cde-igw-rt = {

    }
  }
  cde-routes = {
    cde-tgweni1 = {

    }
    cde-tgweni2 = {

    }
    cde-fwep1 = {

    }
    cde-fwep2 = {

    }
    cde-subnet1 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["cde1"].id
    }
    cde-subnet2 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["cde2"].id
    }
    cde-subnet3 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["cde1"].id
    }
    cde-subnet4 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["cde2"].id
    }
    cde-subnet5 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["cde1"].id
    }
    cde-subnet6 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["cde2"].id
    }
    cde-subnet7 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["cde1"].id
    }
    cde-subnet8 = {
      "0.0.0.0/0" = aws_nat_gateway.ngw["cde2"].id
    }
    cde-dmz1 = { #10.101.101.0/24
      "0.0.0.0/0" = aws_internet_gateway.igw["cde"].id
    }
    cde-dmz2 = { #10.101.102.0/24
      "0.0.0.0/0" = aws_internet_gateway.igw["cde"].id
    }
    cde-protected1 = { #10.101.103.0/24
      "0.0.0.0/0" = aws_internet_gateway.igw["cde"].id
    }
    cde-protected2 = { #10.101.104.0/24
      "0.0.0.0/0" = aws_internet_gateway.igw["cde"].id
    }
  }
}
###########################################################################################################