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

