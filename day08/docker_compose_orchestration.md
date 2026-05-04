# Day 8: Multi-Container Orchestration (Docker Compose)

## Core Concepts
* **Orchestration:** Managing the lifecycle, networking, and volume attachments of multiple containers simultaneously as a single unified stack.
* **Declarative IaC (`docker-compose.yml`):** Instead of typing out massive `docker run` commands with multiple flags, you declare the desired state of your entire architecture in a YAML file. Docker automatically provisions networks, volumes, and container boot orders.

## Essential Commands
* `docker compose up -d`: Reads the `docker-compose.yml` file, builds missing images, and boots the entire stack in detached (background) mode.
* `docker compose down`: Gracefully shuts down the stack and destroys the associated containers and default networks.
* `docker compose logs -f`: Tails the aggregated logs of every container running in the stack simultaneously.
