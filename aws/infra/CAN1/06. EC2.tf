locals {
  ec2_trns = {

  }
}

locals {
  ec2_prod = {
    "Test_prod01" = {
      vpc             = "prod"
      subnet          = "subnet4"
      ami             = data.aws_ami.latest_amz_linux.id
      instance_type   = "t2.micro"
      inbound_allowed = ["0.0.0.0/0", ]
      protocol        = "-1"
      port            = ["0"]
      user_data       = <<EOF
        #!/bin/bash
            yum install -y httpd nano w3m
            chkconfig httpd on
            service httpd start
            echo "Testing EC2 - Test - prod01" > /var/www/html/index.html
            yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
        EOF
    }
  }
}

locals {
  ec2_cde = {
    "Test_cde01" = {
      vpc             = "cde"
      subnet          = "subnet4"
      ami             = data.aws_ami.latest_amz_linux.id
      instance_type   = "t2.micro"
      inbound_allowed = ["10.0.0.0/8", "20.0.0.0/8"]
      protocol        = "TCP"
      port            = ["443", "80"]
      user_data       = <<EOF
        #!/bin/bash
            yum install -y httpd nano w3m
            chkconfig httpd on
            service httpd start
            echo "Testing EC2 - Test - cde01" > /var/www/html/index.html
            yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
        EOF
    }
  }
}