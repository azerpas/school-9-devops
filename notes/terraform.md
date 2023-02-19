# Terraform

Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. Use configuration files to describe the infrastructure you want to build for services like AWS, Azure, Google Cloud, and more.

Terraform can manage low-level components like compute, storage, and networking resources, as well as high-level components like DNS entries and SaaS features.

## Commands
- Use `terraform init` to initialize a working directory containing Terraform configuration files.
- Use `terraform plan` to create an execution plan.
- Use `terraform apply` to apply the changes required to reach the desired state of the configuration.
- Use `terraform destroy` to destroy the Terraform-managed infrastructure.
![Terraform commands](https://developer.hashicorp.com/_next/image?url=https%3A%2F%2Fcontent.hashicorp.com%2Fapi%2Fassets%3Fproduct%3Dterraform%26version%3Drefs%252Fheads%252Fv1.3%26asset%3Dwebsite%252Fimg%252Fdocs%252Fintro-terraform-workflow.png%26width%3D2038%26height%3D1773&w=3840&q=75)

## In a CI pipeline
Each commit to the repository should trigger a CI pipeline that runs `terraform plan` and `terraform apply` to create/update the infrastructure.