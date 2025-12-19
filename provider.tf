terraform {
  cloud {
    organization = "vedant-terraform-org"

    workspaces {
      name = "aws-nginx-workspace"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
