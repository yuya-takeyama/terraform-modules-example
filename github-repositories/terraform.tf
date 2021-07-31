terraform {
  backend "gcs" {
    bucket  = "jp-yuyat-terraform-modules-github-repositories-tfstate"
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {}
