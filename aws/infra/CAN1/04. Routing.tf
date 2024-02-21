######################################## insp vpc Routing ####################################################
locals {
  insp-routes = {
    insp-secmgmt1 = { #10.xx0.1.0/24
      "0.0.0.0/0"      = aws_internet_gateway.igw["insp"].id
      "10.0.0.0/8"     = aws_ec2_transit_gateway.tgw.id
      "172.16.0.0/12"  = aws_ec2_transit_gateway.tgw.id
      "192.168.0.0/16" = aws_ec2_transit_gateway.tgw.id
    }
    insp-secmgmt2 = { #10.xx0.2.0/24
      "0.0.0.0/0"      = aws_internet_gateway.igw["insp"].id
      "10.0.0.0/8"     = aws_ec2_transit_gateway.tgw.id
      "172.16.0.0/12"  = aws_ec2_transit_gateway.tgw.id
      "192.168.0.0/16" = aws_ec2_transit_gateway.tgw.id
    }
    insp-tgweni1 = { #10.xx0.3.0/24
      #"0.0.0.0/0" = aws_nat_gateway.ngw["insp1"].id
    }
    insp-tgweni2 = { #10.xx0.4.0/24
      #"0.0.0.0/0" = aws_nat_gateway.ngw["insp2"].id
    }
    insp-gwlbe1 = { #10.xx0.5.0/24
      "10.0.0.0/8"     = aws_ec2_transit_gateway.tgw.id
      "172.16.0.0/12"  = aws_ec2_transit_gateway.tgw.id
      "192.168.0.0/16" = aws_ec2_transit_gateway.tgw.id
    }
    insp-gwlbe2 = { #10.xx0.6.0/24
      "10.0.0.0/8"     = aws_ec2_transit_gateway.tgw.id
      "172.16.0.0/12"  = aws_ec2_transit_gateway.tgw.id
      "192.168.0.0/16" = aws_ec2_transit_gateway.tgw.id
    }
    insp-gwlb1 = { #10.xx0.7.0/24

    }
    insp-gwlb2 = { #10.xx0.8.0/24

    }
    insp-fwinside1 = { #10.xx0.9.0/24
      "0.0.0.0/0"      = aws_internet_gateway.igw["insp"].id
      "10.0.0.0/8"     = aws_ec2_transit_gateway.tgw.id
      "172.16.0.0/12"  = aws_ec2_transit_gateway.tgw.id
      "192.168.0.0/16" = aws_ec2_transit_gateway.tgw.id
    }
    insp-fwinside2 = { #10.xx0.10.0/24
      "0.0.0.0/0"      = aws_internet_gateway.igw["insp"].id
      "10.0.0.0/8"     = aws_ec2_transit_gateway.tgw.id
      "172.16.0.0/12"  = aws_ec2_transit_gateway.tgw.id
      "192.168.0.0/16" = aws_ec2_transit_gateway.tgw.id
    }
    insp-fwoutside1 = { #10.xx0.11.0/24
      "0.0.0.0/0"      = aws_internet_gateway.igw["insp"].id
      "10.0.0.0/8"     = aws_ec2_transit_gateway.tgw.id
      "172.16.0.0/12"  = aws_ec2_transit_gateway.tgw.id
      "192.168.0.0/16" = aws_ec2_transit_gateway.tgw.id
    }
    insp-fwoutside2 = { #10.xx0.12.0/24
      "0.0.0.0/0"      = aws_internet_gateway.igw["insp"].id
      "10.0.0.0/8"     = aws_ec2_transit_gateway.tgw.id
      "172.16.0.0/12"  = aws_ec2_transit_gateway.tgw.id
      "192.168.0.0/16" = aws_ec2_transit_gateway.tgw.id
    }
    insp-waflb1 = { #10.xx0.13.0/24

    }
    insp-waflb2 = { #10.xx0.14.0/24

    }
    insp-public1 = { #10.xx0.15.0/24
      "0.0.0.0/0"      = aws_internet_gateway.igw["insp"].id
      "10.0.0.0/8"     = aws_ec2_transit_gateway.tgw.id
      "172.16.0.0/12"  = aws_ec2_transit_gateway.tgw.id
      "192.168.0.0/16" = aws_ec2_transit_gateway.tgw.id
    }
    insp-public2 = { #10.xx0.16.0/24
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
    trns-subnet1 = { #10.xx1.1.0/24
      "0.0.0.0/0"  = aws_nat_gateway.ngw["trans1"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    trns-subnet2 = { #10.xx1.2.0/24
      #  "0.0.0.0/0"  = aws_nat_gateway.ngw["trans2"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    trns-subnet3 = { #10.xx1.3.0/24
      "0.0.0.0/0"  = aws_nat_gateway.ngw["trans1"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    trns-subnet4 = { #10.xx1.4.0/24
      #  "0.0.0.0/0"  = aws_nat_gateway.ngw["trans2"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    trns-subnet5 = { #10.xx1.5.0/24
      "0.0.0.0/0"  = aws_nat_gateway.ngw["trans1"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    trns-subnet6 = { #10.xx1.6.0/24
      #  "0.0.0.0/0"  = aws_nat_gateway.ngw["trans2"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    trns-subnet7 = { #10.xx1.7.0/24
      "0.0.0.0/0"  = aws_nat_gateway.ngw["trans1"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    trns-subnet8 = { #10.xx1.8.0/24
      #  "0.0.0.0/0"  = aws_nat_gateway.ngw["trans2"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    trns-tgweni1 = { #10.xx1.9.0/24

    }
    trns-tgweni2 = { #10.xx1.10.0/24

    }
    trns-fwep1 = { #10.xx1.11.0/24

    }
    trns-fwep2 = { #10.xx1.12.0/24

    }
    trns-dmz1 = { #10.xx1.13.0/24
      "0.0.0.0/0"  = aws_internet_gateway.igw["trns"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    trns-dmz2 = { #10.xx1.14.0/24
      "0.0.0.0/0"  = aws_internet_gateway.igw["trns"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    trns-protected1 = { #10.xx1.15.0/24
      "0.0.0.0/0"  = aws_internet_gateway.igw["trns"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    trns-protected2 = { #10.xx1.16.0/24
      "0.0.0.0/0"  = aws_internet_gateway.igw["trns"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
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
    prod-subnet1 = { #10.xx2.1.0/24
      "0.0.0.0/0"  = aws_nat_gateway.ngw["prod1"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    prod-subnet2 = { #10.xx2.2.0/24
      #  "0.0.0.0/0"  = aws_nat_gateway.ngw["prod2"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    prod-subnet3 = { #10.xx2.3.0/24
      "0.0.0.0/0"  = aws_nat_gateway.ngw["prod1"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    prod-subnet4 = { #10.xx2.4.0/24
      #  "0.0.0.0/0"  = aws_nat_gateway.ngw["prod2"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    prod-subnet5 = { #10.xx2.5.0/24
      "0.0.0.0/0"  = aws_nat_gateway.ngw["prod1"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    prod-subnet6 = { #10.xx2.6.0/24
      #  "0.0.0.0/0"  = aws_nat_gateway.ngw["prod2"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    prod-subnet7 = { #10.xx2.7.0/24
      "0.0.0.0/0"  = aws_nat_gateway.ngw["prod1"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    prod-subnet8 = { #10.xx2.8.0/24
      #  "0.0.0.0/0"  = aws_nat_gateway.ngw["prod2"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    prod-tgweni1 = { #10.xx2.9.0/24

    }
    prod-tgweni2 = { #10.xx2.10.0/24

    }
    prod-fwep1 = { #10.xx2.11.0/24

    }
    prod-fwep2 = { #10.xx2.12.0/24

    }
    prod-dmz1 = { #10.xx2.13.0/24
      "0.0.0.0/0"  = aws_internet_gateway.igw["prod"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    prod-dmz2 = { #10.xx2.14.0/24
      "0.0.0.0/0"  = aws_internet_gateway.igw["prod"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    prod-protected1 = { #10.xx2.15.0/24
      "0.0.0.0/0"  = aws_internet_gateway.igw["prod"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    prod-protected2 = { #10.xx2.16.0/24
      "0.0.0.0/0"  = aws_internet_gateway.igw["prod"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
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
    cde-subnet1 = { #10.xx3.1.0/24
      "0.0.0.0/0"  = aws_nat_gateway.ngw["cde1"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    cde-subnet2 = { #10.xx3.2.0/24
      #  "0.0.0.0/0"  = aws_nat_gateway.ngw["cde2"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    cde-subnet3 = { #10.xx3.3.0/24
      "0.0.0.0/0"  = aws_nat_gateway.ngw["cde1"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    cde-subnet4 = { #10.xx3.4.0/24
      #  "0.0.0.0/0"  = aws_nat_gateway.ngw["cde2"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    cde-subnet5 = { #10.xx3.5.0/24
      "0.0.0.0/0"  = aws_nat_gateway.ngw["cde1"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    cde-subnet6 = { #10.xx3.6.0/24
      #  "0.0.0.0/0"  = aws_nat_gateway.ngw["cde2"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    cde-subnet7 = { #10.xx3.7.0/24
      "0.0.0.0/0"  = aws_nat_gateway.ngw["cde1"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    cde-subnet8 = { #10.xx3.8.0/24
      #  "0.0.0.0/0"  = aws_nat_gateway.ngw["cde2"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    cde-tgweni1 = { #10.xx3.9.0/24

    }
    cde-tgweni2 = { #10.xx3.10.0/24

    }
    cde-fwep1 = { #10.xx3.11.0/24

    }
    cde-fwep2 = { #10.xx3.12.0/24

    }
    cde-dmz1 = { #10.xx3.13.0/24
      "0.0.0.0/0"  = aws_internet_gateway.igw["cde"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    cde-dmz2 = { #10.xx3.14.0/24
      "0.0.0.0/0"  = aws_internet_gateway.igw["cde"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    cde-protected1 = { #10.xx3.15.0/24
      "0.0.0.0/0"  = aws_internet_gateway.igw["cde"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
    cde-protected2 = { #10.xx3.16.0/24
      "0.0.0.0/0"  = aws_internet_gateway.igw["cde"].id
      "10.0.0.0/8" = aws_ec2_transit_gateway.tgw.id
    }
  }
}
###########################################################################################################