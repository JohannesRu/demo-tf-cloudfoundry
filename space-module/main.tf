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