# Kubernetes Terragrunt Exemplar - Demo App Source Code
This application is a simple NGINX Docker app which serves a single
page of HTML with some images.

## Contents
1. [Tools and Versions](##Tools-and-Versions)
2. [Installation](##Installation)
3. [Notes](##Notes)

## Tools and Versions
The tools required to build this app are:
- [Docker](https://www.docker.com/)

## Installation
To build this application, simply use Docker:
```
docker build -t exemplar-app .
```
And to see it in action:
```
docker run -p 8080:8080 exemplar-app
```
Then browse to `localhost:8080` to see the application.

## Notes
- [pre-commit](https://pre-commit.com/) is used throughout this project
to ensure that all commits are correctly formatted and there are fewer
mistakes in code. This is a simple tool to install and implement and
it is recommended you set this up when doing any work on these repos.
To install it run:
```
pre-commit install
```
- The Docker image used is `nginxinc/nginx-unprivileged:1.16-alpine`
to follow security best practices. NGINX in its normal form requires
root privileges and therefore can be a potential security flaw.
