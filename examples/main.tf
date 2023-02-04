terraform {
  required_providers {
    pulumi = {
      version = "0.1.0"
      source  = "bnygld/pulumi"
    }
  }
}

provider "pulumi" {}

data "pulumi_stack_outputs" "stack_outputs" {
  organization = "bnygld"
  project      = "jeeves"
  stack        = "production"
}

output "stack_outputs" {
  value = data.pulumi_stack_outputs.stack_outputs.stack_outputs
}
