terraform {
  required_providers {
    cloudfoundry = {
      source  = "cloudfoundry-community/cloudfoundry"
      version = "0.50.4"
    }
  }
}

module "space-module" {
  source = "./space-module"
  apiUrl = var.apiUrl
  userId = var.userId
  password = var.password
  spaceName = var.spaceName
  orgName = var.orgName
}

