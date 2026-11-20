# Project 12: Infrastructure CI Trigger (Terraform Plan)

## Goal
Run Terraform plan automatically through GitHub Actions on push.

## Tasks completed
- Created Terraform Plan GitHub Actions workflow.
- Triggered pipeline on push to main and pull requests.
- Ran Terraform init.
- Ran Terraform plan and generated tfplan.
- Uploaded tfplan as a GitHub Actions artifact.

## Workflow
`.github/workflows/terraform-plan.yml`

## Artifact
terraform-plan

## Result
GitHub Actions Terraform Plan job completed successfully and the plan artifact was uploaded.
