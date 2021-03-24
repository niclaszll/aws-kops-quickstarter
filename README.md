# AWS kOps Quickstarter

This repository provides a quick-start solution to manage Kubernetes clusters on AWS using kOps and the awscli. No local installation is required, all interaction is done via an interactive shell session in inside the Docker container.

## Usage

Start an interactive shell with access to the awc-cli and kops:

```
docker-compose run aws-kops
```

Afterwards run your commands like creating or updating clusters.

Stop the container after exiting the shell:

```
docker-compose down
```

## TODO

- provide aws cli keys as env var
