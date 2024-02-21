################################################################ Locals Section #############################################################################
locals {
  vpc = {
    "insp" = {
      vpc_cidr = var.vpc_cidr_insp
      igw      = "true"
      subnets = {
        "insp-secmgmt1"   = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_insp, 16, 0)), 0, 2))}.0.0/24", az = var.az1 }
        "insp-secmgmt2"   = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_insp, 16, 0)), 0, 2))}.1.0/24", az = var.az2 }
        "insp-tgweni1"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_insp, 16, 0)), 0, 2))}.2.0/24", az = var.az1 }
        "insp-tgweni2"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_insp, 16, 0)), 0, 2))}.3.0/24", az = var.az2 }
        "insp-gwlbe1"     = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_insp, 16, 0)), 0, 2))}.4.0/24", az = var.az1 }
        "insp-gwlbe2"     = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_insp, 16, 0)), 0, 2))}.5.0/24", az = var.az2 }
        "insp-gwlb1"      = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_insp, 16, 0)), 0, 2))}.6.0/24", az = var.az1 }
        "insp-gwlb2"      = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_insp, 16, 0)), 0, 2))}.7.0/24", az = var.az2 }
        "insp-fwinside1"  = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_insp, 16, 0)), 0, 2))}.8.0/24", az = var.az1 }
        "insp-fwinside2"  = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_insp, 16, 0)), 0, 2))}.9.0/24", az = var.az2 }
        "insp-fwoutside1" = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_insp, 16, 0)), 0, 2))}.10.0/24", az = var.az1 }
        "insp-fwoutside2" = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_insp, 16, 0)), 0, 2))}.11.0/24", az = var.az2 }
        "insp-waflb1"     = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_insp, 16, 0)), 0, 2))}.12.0/24", az = var.az1 }
        "insp-waflb2"     = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_insp, 16, 0)), 0, 2))}.13.0/24", az = var.az2 }
        "insp-public1"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_insp, 16, 0)), 0, 2))}.14.0/24", az = var.az1 }
        "insp-public2"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_insp, 16, 0)), 0, 2))}.15.0/24", az = var.az2 }
      }
    }
    "trns" = {
      vpc_cidr = var.vpc_cidr_trns
      igw      = "true"
      subnets = {
        "trns-subnet1"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_trns, 16, 0)), 0, 2))}.1.0/24", az = var.az1 }
        "trns-subnet2"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_trns, 16, 0)), 0, 2))}.2.0/24", az = var.az2 }
        "trns-subnet3"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_trns, 16, 0)), 0, 2))}.3.0/24", az = var.az1 }
        "trns-subnet4"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_trns, 16, 0)), 0, 2))}.4.0/24", az = var.az2 }
        "trns-subnet5"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_trns, 16, 0)), 0, 2))}.5.0/24", az = var.az1 }
        "trns-subnet6"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_trns, 16, 0)), 0, 2))}.6.0/24", az = var.az2 }
        "trns-subnet7"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_trns, 16, 0)), 0, 2))}.7.0/24", az = var.az1 }
        "trns-subnet8"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_trns, 16, 0)), 0, 2))}.8.0/24", az = var.az2 }
        "trns-dmz1"       = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_trns, 16, 0)), 0, 2))}.101.0/24", az = var.az1 }
        "trns-dmz2"       = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_trns, 16, 0)), 0, 2))}.102.0/24", az = var.az2 }
        "trns-protected1" = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_trns, 16, 0)), 0, 2))}.103.0/24", az = var.az1 }
        "trns-protected2" = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_trns, 16, 0)), 0, 2))}.104.0/24", az = var.az2 }
        "trns-tgweni1"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_trns, 16, 0)), 0, 2))}.105.0/24", az = var.az1 }
        "trns-tgweni2"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_trns, 16, 0)), 0, 2))}.106.0/24", az = var.az2 }
        "trns-fwep1"      = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_trns, 16, 0)), 0, 2))}.107.0/24", az = var.az1 }
        "trns-fwep2"      = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_trns, 16, 0)), 0, 2))}.108.0/24", az = var.az2 }
      }
    }
    "prod" = {
      vpc_cidr = var.vpc_cidr_prod
      igw      = "true"
      subnets = {
        "prod-subnet1"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_prod, 16, 0)), 0, 2))}.1.0/24", az = var.az1 }
        "prod-subnet2"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_prod, 16, 0)), 0, 2))}.2.0/24", az = var.az2 }
        "prod-subnet3"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_prod, 16, 0)), 0, 2))}.3.0/24", az = var.az1 }
        "prod-subnet4"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_prod, 16, 0)), 0, 2))}.4.0/24", az = var.az2 }
        "prod-subnet5"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_prod, 16, 0)), 0, 2))}.5.0/24", az = var.az1 }
        "prod-subnet6"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_prod, 16, 0)), 0, 2))}.6.0/24", az = var.az2 }
        "prod-subnet7"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_prod, 16, 0)), 0, 2))}.7.0/24", az = var.az1 }
        "prod-subnet8"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_prod, 16, 0)), 0, 2))}.8.0/24", az = var.az2 }
        "prod-dmz1"       = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_prod, 16, 0)), 0, 2))}.101.0/24", az = var.az1 }
        "prod-dmz2"       = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_prod, 16, 0)), 0, 2))}.102.0/24", az = var.az2 }
        "prod-protected1" = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_prod, 16, 0)), 0, 2))}.103.0/24", az = var.az1 }
        "prod-protected2" = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_prod, 16, 0)), 0, 2))}.104.0/24", az = var.az2 }
        "prod-tgweni1"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_prod, 16, 0)), 0, 2))}.105.0/24", az = var.az1 }
        "prod-tgweni2"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_prod, 16, 0)), 0, 2))}.106.0/24", az = var.az2 }
        "prod-fwep1"      = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_prod, 16, 0)), 0, 2))}.107.0/24", az = var.az1 }
        "prod-fwep2"      = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_prod, 16, 0)), 0, 2))}.108.0/24", az = var.az2 }
      }
    }
    "cde" = {
      vpc_cidr = var.vpc_cidr_cde
      igw      = "true"
      subnets = {
        "cde-subnet1"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_cde, 16, 0)), 0, 2))}.1.0/24", az = var.az1 }
        "cde-subnet2"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_cde, 16, 0)), 0, 2))}.2.0/24", az = var.az2 }
        "cde-subnet3"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_cde, 16, 0)), 0, 2))}.3.0/24", az = var.az1 }
        "cde-subnet4"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_cde, 16, 0)), 0, 2))}.4.0/24", az = var.az2 }
        "cde-subnet5"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_cde, 16, 0)), 0, 2))}.5.0/24", az = var.az1 }
        "cde-subnet6"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_cde, 16, 0)), 0, 2))}.6.0/24", az = var.az2 }
        "cde-subnet7"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_cde, 16, 0)), 0, 2))}.7.0/24", az = var.az1 }
        "cde-subnet8"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_cde, 16, 0)), 0, 2))}.8.0/24", az = var.az2 }
        "cde-dmz1"       = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_cde, 16, 0)), 0, 2))}.101.0/24", az = var.az1 }
        "cde-dmz2"       = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_cde, 16, 0)), 0, 2))}.102.0/24", az = var.az2 }
        "cde-protected1" = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_cde, 16, 0)), 0, 2))}.103.0/24", az = var.az1 }
        "cde-protected2" = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_cde, 16, 0)), 0, 2))}.104.0/24", az = var.az2 }
        "cde-tgweni1"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_cde, 16, 0)), 0, 2))}.105.0/24", az = var.az1 }
        "cde-tgweni2"    = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_cde, 16, 0)), 0, 2))}.106.0/24", az = var.az2 }
        "cde-fwep1"      = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_cde, 16, 0)), 0, 2))}.107.0/24", az = var.az1 }
        "cde-fwep2"      = { cidr = "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_cde, 16, 0)), 0, 2))}.108.0/24", az = var.az2 }
      }
    }
  }
  ngw = {
    "trans1" = aws_subnet.subnet["trns-protected1"].id
    # "trans2" = aws_subnet.subnet["trns-protected1"].id
    "prod1" = aws_subnet.subnet["prod-protected1"].id
    # "prod2"  = aws_subnet.subnet["prod-protected2"].id
    "cde1" = aws_subnet.subnet["cde-protected1"].id
    # "cde2"   = aws_subnet.subnet["cde-protected2"].id
    # "insp1"  = aws_subnet.subnet["insp-public1"].id
    #  "insp2"  = aws_subnet.subnet["insp-public2"].id
  }
  tgw_attach = {
    "insp" = {
      vpc                  = aws_vpc.vpc["insp"].id
      subnets              = [aws_subnet.subnet["insp-tgweni1"].id, aws_subnet.subnet["insp-tgweni2"].id]
      default_rt_assosiate = "false"
    }
    "trns" = {
      vpc                  = aws_vpc.vpc["trns"].id
      subnets              = [aws_subnet.subnet["trns-tgweni1"].id, aws_subnet.subnet["trns-tgweni2"].id]
      default_rt_assosiate = "true"
    }
    "prod" = {
      vpc                  = aws_vpc.vpc["prod"].id
      subnets              = [aws_subnet.subnet["prod-tgweni1"].id, aws_subnet.subnet["prod-tgweni2"].id]
      default_rt_assosiate = "true"
    }
    "cde" = {
      vpc                  = aws_vpc.vpc["cde"].id
      subnets              = [aws_subnet.subnet["cde-tgweni1"].id, aws_subnet.subnet["cde-tgweni2"].id]
      default_rt_assosiate = "true"
    }
  }
  tgw_routes = {
    "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_trns, 16, 0)), 0, 2))}.0.0/16" = aws_ec2_transit_gateway_vpc_attachment.tgw-attach["trns"].id,
    "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_prod, 16, 0)), 0, 2))}.0.0/16" = aws_ec2_transit_gateway_vpc_attachment.tgw-attach["prod"].id,
    "${join(".", slice(split(".", cidrsubnet(var.vpc_cidr_cde, 16, 0)), 0, 2))}.0.0/16"  = aws_ec2_transit_gateway_vpc_attachment.tgw-attach["cde"].id,
  }
  sg-ep = {
    "ep-insp" = { id = aws_vpc.vpc["insp"].id, cidr = [var.vpc_cidr_insp] }
    "ep-trns" = { id = aws_vpc.vpc["trns"].id, cidr = [var.vpc_cidr_trns] }
    "ep-prod" = { id = aws_vpc.vpc["prod"].id, cidr = [var.vpc_cidr_prod] }
    "ep-cde"  = { id = aws_vpc.vpc["cde"].id, cidr = [var.vpc_cidr_cde] }
  }
  flow_logs = {
    "tgW"        = aws_ec2_transit_gateway.tgw.id,
    "vpc - insp" = aws_vpc.vpc["insp"].id,
    "vpc - trns" = aws_vpc.vpc["trns"].id,
    "vpc - prod" = aws_vpc.vpc["prod"].id,
    "vpc - cde"  = aws_vpc.vpc["cde"].id,
  }
  ec2 = merge(local.ec2_trns, local.ec2_prod, local.ec2_cde)
  nlb = merge(local.nlb_int, local.nlb_ext)
}

################ vpc ##################
resource "aws_vpc" "vpc" {
  for_each             = local.vpc
  cidr_block           = each.value.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name = "${var.site}-${each.key}-vpc"
  }
}

################ Subnets ##################
locals {
  subnets_list = flatten([
    for s in keys(local.vpc) : [
      for name, subnet in local.vpc[s].subnets : {
        key  = "${name}"
        vpc  = aws_vpc.vpc[s].id
        name = name
        cidr = subnet.cidr
        az   = "${var.region}${subnet.az}"
      }
    ]
  ])
}

locals {
  sb = { for s in local.subnets_list : s.key => s }
}

resource "aws_subnet" "subnet" {
  for_each          = local.sb
  vpc_id            = each.value.vpc
  cidr_block        = each.value.cidr
  availability_zone = each.value.az
  tags = {
    Name = "${var.site}-${each.key}"
  }
}

################ Internet Gateway ##################
resource "aws_internet_gateway" "igw" {
  for_each = { for name, config in local.vpc : name => config if config.igw == "true" }
  vpc_id   = aws_vpc.vpc[each.key].id
  tags = {
    Name = "igw-${each.key}"
  }
}

################ NAT Gateway ##################
resource "aws_eip" "nat_eip" {
  for_each = local.ngw
  tags = {
    Name = "ngw-${each.key}"
  }
}

resource "aws_nat_gateway" "ngw" {
  for_each      = local.ngw
  allocation_id = aws_eip.nat_eip[each.key].id
  subnet_id     = each.value
  tags = {
    Name = "ngw-${each.key}"
  }
}

################ Security Group ##################
resource "aws_security_group" "sg-ep" {
  for_each = local.sg-ep
  vpc_id   = each.value.id
  name     = each.key
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = each.value.cidr
  }
  tags = {
    Name = "${each.key}"
  }
}

################ Key Pair ##################
resource "tls_private_key" "key_pair" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
# Create the Key Pair
resource "aws_key_pair" "key_pair" {
  key_name   = "my-key-pair"
  public_key = tls_private_key.key_pair.public_key_openssh
}
# Save file
resource "local_file" "ssh_key" {
  filename = "${aws_key_pair.key_pair.key_name}.pem"
  content  = tls_private_key.key_pair.private_key_pem
}

#output "file_content" {
#  value     = tls_private_key.key_pair.private_key_pem
#  sensitive = true
#}

################ Transit Gateway ##################
resource "aws_ec2_transit_gateway" "tgw" {
  description                     = "Transit Gateway"
  default_route_table_association = "enable"
  default_route_table_propagation = "enable"
  tags = {
    Name = "tgw"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "tgw-attach" {
  for_each                                        = local.tgw_attach
  subnet_ids                                      = each.value.subnets
  transit_gateway_id                              = aws_ec2_transit_gateway.tgw.id
  vpc_id                                          = each.value.vpc
  appliance_mode_support                          = "enable"
  transit_gateway_default_route_table_association = each.value.default_rt_assosiate
  transit_gateway_default_route_table_propagation = "false"
  tags = {
    "Name" = "${each.key}-tgw-attach"
  }
}

resource "aws_ec2_transit_gateway_route_table" "tgw-firewall-rt" {
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id
  tags = {
    Name = "tgw-firewall-rt"
  }
}

resource "aws_ec2_tag" "tgw-spoke-rt" {
  resource_id = aws_ec2_transit_gateway.tgw.association_default_route_table_id
  key         = "Name"
  value       = "tgw-spoke-rt"
}

resource "aws_ec2_transit_gateway_route_table_association" "insp-tgweni-tgw-rt-attach" {
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.tgw-attach["insp"].id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw-firewall-rt.id
}

resource "aws_ec2_transit_gateway_route" "tgw_default_route" {
  destination_cidr_block         = "0.0.0.0/0"
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.tgw-attach["insp"].id
  transit_gateway_route_table_id = aws_ec2_transit_gateway.tgw.association_default_route_table_id
}

resource "aws_ec2_transit_gateway_route" "firewall-rt-route" {
  for_each                       = local.tgw_routes
  destination_cidr_block         = each.key
  transit_gateway_attachment_id  = each.value
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw-firewall-rt.id
}

###################### vpn ##################################
resource "aws_customer_gateway" "cg" {
  for_each   = local.vpn
  bgp_asn    = 65002
  ip_address = each.value.peer_ip
  type       = "ipsec.1"
  tags = {
    Name = "cg-${each.key}"
  }
}

resource "aws_vpn_connection" "vpn" {
  for_each            = local.vpn
  transit_gateway_id  = aws_ec2_transit_gateway.tgw.id
  customer_gateway_id = aws_customer_gateway.cg[each.key].id
  type                = "ipsec.1"
  static_routes_only  = true
  tags = {
    Name = "vpn-${each.key}"
  }
}

data "aws_ec2_transit_gateway_vpn_attachment" "vpn-tgw-attachment" {
  for_each           = local.vpn
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id
  vpn_connection_id  = aws_vpn_connection.vpn[each.key].id
}

resource "aws_ec2_tag" "vpn-tgw-attachment-tag" {
  for_each    = local.vpn
  resource_id = data.aws_ec2_transit_gateway_vpn_attachment.vpn-tgw-attachment[each.key].id
  key         = "Name"
  value       = "vpn-${each.key}"
}

locals {
  flattened_vpn = flatten([
    for key, value in local.vpn : [
      for cidr in value.remote_nw : {
        key  = key
        cidr = cidr
      }
    ]
  ])
}

resource "aws_ec2_transit_gateway_route" "tgw-vpn-routes" {
  for_each                       = { for i, value in local.flattened_vpn : "${value.key}-${value.cidr}" => value }
  destination_cidr_block         = each.value.cidr
  transit_gateway_attachment_id  = data.aws_ec2_transit_gateway_vpn_attachment.vpn-tgw-attachment[each.value.key].id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw-firewall-rt.id
}


############# SSM ################
resource "aws_iam_role" "ssm-role" {
  name        = "ssm-role-${var.site}"
  description = "The role for SSM to manage EC2"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ssm-policy" {
  role       = aws_iam_role.ssm-role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_instance_profile" "ssm-iam-instance-profile" {
  name = "ssm-iam-instance-profile-${var.site}"
  role = aws_iam_role.ssm-role.name
}

locals {
  endpoints = {
    "endpoint-ssm" = {
      name = "ssm"
    },
    "endpoint-ssmm-essages" = {
      name = "ssmmessages"
    },
    "endpoint-ec2-messages" = {
      name = "ec2messages"
    }
  }
}
resource "aws_vpc_endpoint" "ssm_insp_endpoints" {
  vpc_id              = aws_vpc.vpc["insp"].id
  subnet_ids          = [aws_subnet.subnet["insp-gwlbe1"].id, aws_subnet.subnet["insp-gwlbe2"].id]
  for_each            = local.endpoints
  private_dns_enabled = true
  vpc_endpoint_type   = "Interface"
  service_name        = "com.amazonaws.${var.region}.${each.value.name}"
  security_group_ids  = [aws_security_group.sg-ep["ep-insp"].id]
  tags = {
    Name = "ssm_insp_endpoints_${each.value.name}"
  }
}

resource "aws_vpc_endpoint" "ssm_trns_endpoints" {
  vpc_id              = aws_vpc.vpc["trns"].id
  subnet_ids          = [aws_subnet.subnet["trns-fwep1"].id, aws_subnet.subnet["trns-fwep2"].id]
  for_each            = local.endpoints
  private_dns_enabled = true
  vpc_endpoint_type   = "Interface"
  service_name        = "com.amazonaws.${var.region}.${each.value.name}"
  security_group_ids  = [aws_security_group.sg-ep["ep-trns"].id]
  tags = {
    Name = "ssm_trns_endpoints_${each.value.name}"
  }
}

resource "aws_vpc_endpoint" "ssm_prod_endpoints" {
  vpc_id              = aws_vpc.vpc["prod"].id
  subnet_ids          = [aws_subnet.subnet["prod-fwep1"].id, aws_subnet.subnet["prod-fwep2"].id]
  for_each            = local.endpoints
  private_dns_enabled = true
  vpc_endpoint_type   = "Interface"
  service_name        = "com.amazonaws.${var.region}.${each.value.name}"
  security_group_ids  = [aws_security_group.sg-ep["ep-prod"].id]
  tags = {
    Name = "ssm_prod_endpoints_${each.value.name}"
  }
}

resource "aws_vpc_endpoint" "ssm_cde_endpoints" {
  vpc_id              = aws_vpc.vpc["cde"].id
  subnet_ids          = [aws_subnet.subnet["cde-fwep1"].id, aws_subnet.subnet["cde-fwep2"].id]
  for_each            = local.endpoints
  private_dns_enabled = true
  vpc_endpoint_type   = "Interface"
  service_name        = "com.amazonaws.${var.region}.${each.value.name}"
  security_group_ids  = [aws_security_group.sg-ep["ep-cde"].id]
  tags = {
    Name = "ssm_cde_endpoints_${each.value.name}"
  }
}

##################################### Routing - insp vpc ########################################################################
resource "aws_route_table" "insp-rt" {
  for_each = local.insp-routes
  vpc_id   = aws_vpc.vpc["insp"].id
  dynamic "route" {
    for_each = each.value
    content {
      cidr_block           = route.key
      transit_gateway_id   = can(regex("tgw-", route.value)) ? route.value : null
      gateway_id           = can(regex("igw-", route.value)) ? route.value : null
      nat_gateway_id       = can(regex("nat-", route.value)) ? route.value : null
      vpc_endpoint_id      = can(regex("vpce-", route.value)) ? route.value : null
      network_interface_id = can(regex("eni-", route.value)) ? route.value : null
    }
  }
  tags = {
    Name = "${each.key}"
  }
}

resource "aws_route_table_association" "inspa" {
  for_each       = local.insp-routes
  subnet_id      = aws_subnet.subnet[each.key].id
  route_table_id = aws_route_table.insp-rt[each.key].id
}

##################################### Routing - trns vpc ########################################################################
resource "aws_route_table" "trns-igw-rt" {
  for_each = local.trns-igw-routes
  vpc_id   = aws_vpc.vpc["trns"].id
  dynamic "route" {
    for_each = each.value
    content {
      cidr_block           = route.key
      transit_gateway_id   = can(regex("tgw-", route.value)) ? route.value : null
      gateway_id           = can(regex("igw-", route.value)) ? route.value : null
      nat_gateway_id       = can(regex("nat-", route.value)) ? route.value : null
      vpc_endpoint_id      = can(regex("vpce-", route.value)) ? route.value : null
      network_interface_id = can(regex("eni-", route.value)) ? route.value : null
    }
  }
  tags = {
    Name = "${each.key}-rt"
  }
}

resource "aws_route_table_association" "trns-igw-rta" {
  for_each       = local.trns-igw-routes
  gateway_id     = aws_internet_gateway.igw["trns"].id
  route_table_id = aws_route_table.trns-igw-rt[each.key].id
}

resource "aws_route_table" "trns-rt" {
  for_each = local.trns-routes
  vpc_id   = aws_vpc.vpc["trns"].id
  dynamic "route" {
    for_each = each.value
    content {
      cidr_block           = route.key
      transit_gateway_id   = can(regex("tgw-", route.value)) ? route.value : null
      gateway_id           = can(regex("igw-", route.value)) ? route.value : null
      nat_gateway_id       = can(regex("nat-", route.value)) ? route.value : null
      vpc_endpoint_id      = can(regex("vpce-", route.value)) ? route.value : null
      network_interface_id = can(regex("eni-", route.value)) ? route.value : null
    }
  }
  tags = {
    Name = "${each.key}-rt"
  }
}

resource "aws_route_table_association" "trns-rta" {
  for_each       = local.trns-routes
  subnet_id      = aws_subnet.subnet[each.key].id
  route_table_id = aws_route_table.trns-rt[each.key].id
}

##################################### Routing - prod vpc ########################################################################
resource "aws_route_table" "prod-igw-rt" {
  for_each = local.prod-igw-routes
  vpc_id   = aws_vpc.vpc["prod"].id
  dynamic "route" {
    for_each = each.value
    content {
      cidr_block           = route.key
      transit_gateway_id   = can(regex("tgw-", route.value)) ? route.value : null
      gateway_id           = can(regex("igw-", route.value)) ? route.value : null
      nat_gateway_id       = can(regex("nat-", route.value)) ? route.value : null
      vpc_endpoint_id      = can(regex("vpce-", route.value)) ? route.value : null
      network_interface_id = can(regex("eni-", route.value)) ? route.value : null
    }
  }
  tags = {
    Name = "${each.key}-rt"
  }
}

resource "aws_route_table_association" "prod-igw-rta" {
  for_each       = local.prod-igw-routes
  gateway_id     = aws_internet_gateway.igw["prod"].id
  route_table_id = aws_route_table.prod-igw-rt[each.key].id
}

resource "aws_route_table" "prod-rt" {
  for_each = local.prod-routes
  vpc_id   = aws_vpc.vpc["prod"].id
  dynamic "route" {
    for_each = each.value
    content {
      cidr_block           = route.key
      transit_gateway_id   = can(regex("tgw-", route.value)) ? route.value : null
      gateway_id           = can(regex("igw-", route.value)) ? route.value : null
      nat_gateway_id       = can(regex("nat-", route.value)) ? route.value : null
      vpc_endpoint_id      = can(regex("vpce-", route.value)) ? route.value : null
      network_interface_id = can(regex("eni-", route.value)) ? route.value : null
    }
  }
  tags = {
    Name = "${each.key}-rt"
  }
}

resource "aws_route_table_association" "prod-rta" {
  for_each       = local.prod-routes
  subnet_id      = aws_subnet.subnet[each.key].id
  route_table_id = aws_route_table.prod-rt[each.key].id
}

##################################### Routing - cde vpc ########################################################################
resource "aws_route_table" "cde-igw-rt" {
  for_each = local.cde-igw-routes
  vpc_id   = aws_vpc.vpc["cde"].id
  dynamic "route" {
    for_each = each.value
    content {
      cidr_block           = route.key
      transit_gateway_id   = can(regex("tgw-", route.value)) ? route.value : null
      gateway_id           = can(regex("igw-", route.value)) ? route.value : null
      nat_gateway_id       = can(regex("nat-", route.value)) ? route.value : null
      vpc_endpoint_id      = can(regex("vpce-", route.value)) ? route.value : null
      network_interface_id = can(regex("eni-", route.value)) ? route.value : null
    }
  }
  tags = {
    Name = "${each.key}-rt"
  }
}

resource "aws_route_table_association" "cde-igw-rta" {
  for_each       = local.cde-igw-routes
  gateway_id     = aws_internet_gateway.igw["cde"].id
  route_table_id = aws_route_table.cde-igw-rt[each.key].id
}

resource "aws_route_table" "cde-rt" {
  for_each = local.cde-routes
  vpc_id   = aws_vpc.vpc["cde"].id
  dynamic "route" {
    for_each = each.value
    content {
      cidr_block           = route.key
      transit_gateway_id   = can(regex("tgw-", route.value)) ? route.value : null
      gateway_id           = can(regex("igw-", route.value)) ? route.value : null
      nat_gateway_id       = can(regex("nat-", route.value)) ? route.value : null
      vpc_endpoint_id      = can(regex("vpce-", route.value)) ? route.value : null
      network_interface_id = can(regex("eni-", route.value)) ? route.value : null
    }
  }
  tags = {
    Name = "${each.key}-rt"
  }
}

resource "aws_route_table_association" "cde-rta" {
  for_each       = local.cde-routes
  subnet_id      = aws_subnet.subnet[each.key].id
  route_table_id = aws_route_table.cde-rt[each.key].id
}

########################################## EC2 ###################################################################
# sudo yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
data "aws_ami" "latest_amz_linux" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn-ami-*"]
  }
}

data "aws_ami" "latest_amz_windows2016srv" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["Windows_Server-2016-English-Full-Base-*"]
  }
}
data "aws_ami" "latest_amz_windows2019srv" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["Windows_Server-2019-English-Full-Base-*"]
  }
}

data "aws_ami" "latest_amz_windows2022srv" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["Windows_Server-2022-English-Full-Base-*"]
  }
}
resource "aws_security_group" "sg" {
  for_each = local.ec2
  name     = each.key
  vpc_id   = aws_vpc.vpc["${each.value.vpc}"].id
  dynamic "ingress" {
    for_each = each.value.port
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = each.value.protocol
      cidr_blocks = each.value.inbound_allowed
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "ec2-${each.key}"
  }
}

resource "aws_instance" "ec2" {
  for_each                    = local.ec2
  ami                         = each.value.ami
  instance_type               = each.value.instance_type
  subnet_id                   = aws_subnet.subnet["${each.value.vpc}-${each.value.subnet}"].id
  private_ip                  = can(each.value.private_ip) ? (each.value.private_ip != "" ? each.value.private_ip : null) : null
  associate_public_ip_address = trim("${each.value.subnet}", "12") == "dmz" ? true : false
  vpc_security_group_ids      = [aws_security_group.sg["${each.key}"].id]
  key_name                    = aws_key_pair.key_pair.key_name
  iam_instance_profile        = aws_iam_instance_profile.ssm-iam-instance-profile.name
  lifecycle {
    ignore_changes = [ami]
    #prevent_destroy = true
  }
  user_data = can(each.value.user_data) ? (each.value.user_data != "" ? each.value.user_data : null) : null
  tags = {
    Name = "${each.key}"
  }
}

########################### Flow Logs #############################################################################
resource "aws_cloudwatch_log_group" "vpc_flow_logs" {
  name              = "vpc_Flow_Logs-${var.site}"
  retention_in_days = "365"
}

resource "aws_flow_log" "flow_logs" {
  for_each                 = local.flow_logs
  log_destination_type     = "cloud-watch-logs"
  log_destination          = aws_cloudwatch_log_group.vpc_flow_logs.arn
  traffic_type             = "ALL"
  transit_gateway_id       = can(regex("tgw-", each.value) == 0) ? each.value : null
  vpc_id                   = can(regex("vpc-", each.value) == 0) ? each.value : null
  max_aggregation_interval = "60"
  iam_role_arn             = aws_iam_role.flo.arn
}

data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["vpc-flow-logs.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role" "flo" {
  name               = "flo-${var.site}"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

data "aws_iam_policy_document" "flo" {
  statement {
    effect = "Allow"

    actions = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents",
      "logs:DescribeLogGroups",
      "logs:DescribeLogStreams",
    ]

    resources = ["*"]
  }
}

resource "aws_iam_role_policy" "flo" {
  name   = "flo"
  role   = aws_iam_role.flo.id
  policy = data.aws_iam_policy_document.flo.json
}

########################## nlb Internal Section ###################################
resource "aws_security_group" "sg_nlb" {
  for_each = local.nlb
  name     = can(each.value.internal) ? (each.value.internal != "" ? "nlb-e-${each.key}" : "nlb-i-${each.key}") : "nlb-i-${each.key}"
  vpc_id = (
    each.value.vpc == "trns" ? aws_vpc.vpc["trns"].id :
    each.value.vpc == "prod" ? aws_vpc.vpc["prod"].id :
    each.value.vpc == "cde" ? aws_vpc.vpc["cde"].id :
    each.value.vpc == "insp" ? aws_vpc.vpc["insp"].id :
    "invalid"
  )
  dynamic "ingress" {
    for_each = each.value.port
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "TCP"
      cidr_blocks = each.value.inbound_allowed
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    Name = can(each.value.internal) ? (each.value.internal != "" ? "nlb-e-${each.key}" : "nlb-i-${each.key}") : "nlb-i-${each.key}"
  }
}

resource "aws_eip" "eip1" {
  for_each = local.nlb_ext
  tags = {
    Name = "nlb-e-${each.key}-eip1"
  }
}

resource "aws_eip" "eip2" {
  for_each = local.nlb_ext
  tags = {
    Name = "nlb-e-${each.key}-eip2"
  }
}

resource "aws_lb" "nlb" {
  for_each           = local.nlb
  name               = can(each.value.internal) ? (each.value.internal != "" ? "nlb-e-${each.key}" : "nlb-i-${each.key}") : "nlb-i-${each.key}"
  internal           = can(each.value.internal) ? (each.value.internal != "" ? each.value.internal : null) : null
  load_balancer_type = "network"
  subnet_mapping {
    subnet_id = (
      each.value.vpc == "trns" ? aws_subnet.subnet["trns-protected1"].id :
      each.value.vpc == "prod" ? aws_subnet.subnet["prod-protected1"].id :
      each.value.vpc == "cde" ? aws_subnet.subnet["cde-protected1"].id :
      each.value.vpc == "insp" ? aws_subnet.subnet["insp-public1"].id :
      "invalid"
    )
    allocation_id = can(each.value.internal) ? (each.value.internal != "" ? aws_eip.eip1[each.key].id : null) : null
  }
  subnet_mapping {
    subnet_id = (
      each.value.vpc == "trns" ? aws_subnet.subnet["trns-protected2"].id :
      each.value.vpc == "prod" ? aws_subnet.subnet["prod-protected2"].id :
      each.value.vpc == "cde" ? aws_subnet.subnet["cde-protected2"].id :
      each.value.vpc == "insp" ? aws_subnet.subnet["insp-public2"].id :
      "invalid"
    )
    allocation_id = can(each.value.internal) ? (each.value.internal != "" ? aws_eip.eip2[each.key].id : null) : null
  }
  security_groups = [aws_security_group.sg_nlb[each.key].id]
}

locals {
  lb_portlist_int = flatten([
    for key, config in local.nlb : [
      for port in config.port : {
        vpc      = config.vpc
        target   = config.target
        port     = port
        lb       = key
        internal = can(config.internal) ? (config.internal != "" ? "false" : "null") : null
      }
    ]
  ])
  lb_port = { for s in local.lb_portlist_int : "${s.lb}-${s.port}" => s }
}

resource "aws_lb_listener" "listener-nlb" {
  for_each          = local.lb_port
  load_balancer_arn = aws_lb.nlb[each.value.lb].arn
  port              = each.value.port
  protocol          = "TCP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.nlb-tg[each.key].arn
  }
}

resource "aws_lb_target_group" "nlb-tg" {
  for_each    = local.lb_port
  name        = can(each.value.internal) ? (each.value.internal == "false" ? "nlb-e-${each.key}" : "nlb-i-${each.key}") : "nlb-i-${each.key}"
  port        = each.value.port
  protocol    = "TCP"
  target_type = can(regex("^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$", each.value.target[0])) ? "ip" : null
  vpc_id = (
    each.value.vpc == "trns" ? aws_vpc.vpc["trns"].id :
    each.value.vpc == "prod" ? aws_vpc.vpc["prod"].id :
    each.value.vpc == "cde" ? aws_vpc.vpc["cde"].id :
    each.value.vpc == "insp" ? aws_vpc.vpc["insp"].id :
    "invalid"
  )
  deregistration_delay = 1200
}

resource "aws_lb_target_group_attachment" "attach-nlb_tg-1" {
  for_each         = { for k, v in local.lb_port : k => v if v.target[0] != "" }
  target_group_arn = aws_lb_target_group.nlb-tg[each.key].arn
  target_id        = can(regex("^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$", each.value.target[0])) ? each.value.target[0] : aws_instance.ec2[each.value.target[0]].id
  port             = each.value.port
}

resource "aws_lb_target_group_attachment" "attach-nlb_tg-2" {
  for_each         = { for k, v in local.lb_port : k => v if v.target[1] != "" }
  target_group_arn = aws_lb_target_group.nlb-tg[each.key].arn
  target_id        = can(regex("^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$", each.value.target[1])) ? each.value.target[1] : aws_instance.ec2[each.value.target[1]].id
  port             = each.value.port
}

resource "aws_lb_target_group_attachment" "attach-nlb_tg-3" {
  for_each         = { for k, v in local.lb_port : k => v if v.target[2] != "" }
  target_group_arn = aws_lb_target_group.nlb-tg[each.key].arn
  target_id        = can(regex("^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$", each.value.target[2])) ? each.value.target[2] : aws_instance.ec2[each.value.target[2]].id
  port             = each.value.port
}