terraform {
  required_providers {
    cloudfoundry = {
      source  = "cloudfoundry-community/cloudfoundry"
      version = "0.50.4"
    }
  }
}

provider "cloudfoundry" {
  api_url  = var.apiUrl
  user     = var.userId
  password = var.password
}

data "cloudfoundry_org" "org" {
  name = var.orgName
}

resource "cloudfoundry_space" "s1" {
  name = var.spaceName
  org  = data.cloudfoundry_org.org.id
}