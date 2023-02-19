# Automatic deployment through multiple environments
## The whole picture
<img width="1141" alt="image" src="https://user-images.githubusercontent.com/19282069/219966837-a975604b-2632-4c60-9a7b-7c53e8f415e1.png">

## Development environment
**On push**
### Build and store
- Build the app
- Store the app in a Docker registry, artifact repository, or file storage
### Tests
- Run unit tests with `pytest`, `jest`, `mocha`, etc.
- Run quality checks with `eslint`, `sonarqube`, etc.
- Run security checks with `snyk`, `checkmarx`, etc.
### Deploy
- Deploy the app to the acceptance environment with Ansible, Terraform...
## Acceptance environment
**On deployment**
### Tests
- Run integration tests with `playwright`, `selenium`, etc.
- Run IHM tests with `playwright`, `selenium`, etc.
- Run non-regression tests with `playwright`, `selenium`, etc.
- Run acceptance tests with `cucumber`, `behave`, etc.
### Build and store
- Build and store the app in a Docker registry, artifact repository, or file storage
## Pre-production environment
**On acceptance**
### Deploy
- Deploy the app to the pre-production environment with Ansible, Terraform...
### Tests
- Run performance tests with `jmeter`, `gatling`, etc.
- Run vulnerability tests with `clair`
### Deploy to production
- Deploy the app to the production environment with Ansible, Terraform...
## Production environment
**On deployment**
### Check 
- Run post-deployment checks...
