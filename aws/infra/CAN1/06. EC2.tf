locals {
  ec2_trns = {

  }
}

locals {
  ec2_prod = {

  }
}

locals {
  ec2_cde = {
  }
}

/*######################### Sample ####################################
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
*/