# synapse-login-aws-infra
Infrastructure for the Synapse login application to the AWS service catalog

## Deployment
We use[sceptre](https://sceptre.cloudreach.com/latest/about.html) to deploy the
infrastructure for the application.

To create or update the AWS infrastructure:

```
sceptre --var "profile=my-aws" --var "region=us-east-1" launch develop
```

## Infrastructure
We run the login app on an AWS Beanstalk Tomcat solution stack.  Once the infra is
setup you can deploy the login apps into the beanstalk solution stack.

# login apps
List of login apps using this AWS infrastructure.
* https://github.com/Sage-Bionetworks/synapse-login-scipool

## Continuous Integration
We have configured Travis to deploy CF template updates.  Travis deploys using
[sceptre](https://sceptre.cloudreach.com/latest/about.html)

# Contributions
Contributions are welcome

## Issues
* https://sagebionetworks.jira.com/projects/SC


## Builds
* https://travis-ci.org/Sage-Bionetworks/synapse-login-aws-infra

## Secrets
* We use the [AWS SSM](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-paramstore.html)
to store secrets for this project.  Sceptre retrieves the secrets using
a [sceptre ssm resolver](https://github.com/cloudreach/sceptre/tree/v1/contrib/ssm-resolver)
and passes them to the cloudformation stack on deployment.
