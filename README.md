# docker-amazonlinux2-node
Custom Docker Image for AmazonLinux2 and Node.js

## About this image

Amazonlinux in Docker (created via `FROM amazonlinux:2`) is so bare and empty that it doesn't even have basic stuffs like sudo or passwd. New AWS EC2 instances do. Plus this image contains the current `Node.js LTS version` **(12)** and `Yarn` Package Manager.

Now, we can work very close to a fresh EC2 instance running in Docker.