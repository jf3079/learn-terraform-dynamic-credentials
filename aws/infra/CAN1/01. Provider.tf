terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  cloud {
    organization = "KuTest"
    workspaces {
      name = "${var.site}-Prod"
    }
  }
}

provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Environment = "${var.site}-Production"
      Project     = "AWS Migration"
    }
  }
}