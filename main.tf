terraform {
  required_providers {
    cloudfoundry = {
      source  = "cloudfoundry-community/cloudfoundry"
      version = "0.50.4"
    }
  }
  backend "gcs" {
    bucket = "orchestrator-tf-state-demo"
    prefix = "terraform/state"
  }

}

variable "apiUrl" {
  description = "URL of CF API"
  type        = string
}
variable "userId" {
  description = "CF User Id"
  type        = string
}
variable "password" {
  description = "CF password"
  type        = string
}

provider "cloudfoundry" {
  api_url  = var.apiUrl
  user     = var.userId
  password = var.password
}

data "cloudfoundry_org" "org" {
  name = "cf_org_manual-subaccount-cf"
}

resource "cloudfoundry_space" "s1" {
  name = "space-one"
  org  = data.cloudfoundry_org.org.id
}
