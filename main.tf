terraform {
  backend "gcs" {
    bucket = "orchestrator-tf-state-demo"
    prefix = "terraform/state"
  }

}

