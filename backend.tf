## If you run terraform locally or through a pipeline, you need to enable this backend config and setup the host mashine accordingly

# terraform {
#     backend "gcs" {
#     bucket = "orchestrator-tf-state-demo"
#     prefix = "terraform/state"
#     }
# }