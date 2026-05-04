# Day 5: Docker Fundamentals

## Theory: Containers vs VMs
* **Virtual Machines (VMs):** Heavy. They include a full Operating System and hypervisor.
* **Containers:** Lightweight. They share the host OS kernel and only package the app + libraries.
* **Docker Engine:** The runtime that manages the lifecycle of containers.

## Essential Commands
| Command | Description |
| :--- | :--- |
| `docker run hello-world` | Pulls and runs a test container to verify installation. |
| `docker ps` | Shows all currently running containers. |
| `docker stop <ID>` | Gracefully shuts down a container. |
| `docker pull <image>` | Downloads an image from Docker Hub without running it. |
| `.dockerignore` | File used to exclude local files from being sent to the Docker daemon. |
