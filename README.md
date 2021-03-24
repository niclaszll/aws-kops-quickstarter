# AWS kOps Quickstarter

This repository provides a quick-start solution to manage Kubernetes clusters on AWS using kOps and the aws-cli. No local installation is required, all interaction is done via an interactive shell session inside the Docker container.

## Setup

Create an `.env` file from the existing `env.example` file. Afterwards add your AWS credentials to the .env file to configure the CLI correctly.

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
