# Get started

This is a sample repo of a terraform script which uses [Terraform CloudFoundry Provider](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest) to orchestrate a [CloudFroundry_space](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/resources/space) in code.

You can adjust this example to any other terraform provider/resource resource or a different remote state bucket that does not run on Google cloud platform.

## Run locally
1. To run this example locally, configure the `terraform.tfvars_example` file, and rename to `terraform.tfvars`
2. make sure your local mashine is logged into the gcp cli.
3. `terraform init`
4. `terraform apply`
    When asked, enter `yes` to create the desired space resource

## Migrate to Crossplane
Next, we learn how the existing terraform-managed landscape can be moved to our Crossplane control plane. All relevant crossplane resources you can find in `migration_to_crossplane`

**Full guide [here](https://pages.github.tools.sap/cloud-orchestration/docs/advanced/MigrateExistingSetups)**