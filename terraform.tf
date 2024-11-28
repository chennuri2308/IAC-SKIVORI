terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.77.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.3"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.5"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.26.0"
    }
  }

  backend "s3" {
    bucket = "skivoriterrastate"
    key    = "terraform.tfstate"
    region = "eu-central-1"
  }

  required_version = "~> 1.9.8"
}
##
##required_version = "~> 1.6.3"
##
