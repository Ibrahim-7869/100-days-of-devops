# Day 5: Docker Fundamentals & Architecture Upgrade

## Theory: Containers vs VMs
* **Virtual Machines (VMs):** Heavy. They include a full Operating System and hypervisor.
* **Containers:** Lightweight. They share the host OS kernel and only package the app + libraries.
* **Docker Engine:** The runtime that manages the lifecycle of containers.

## Essential Commands & Flags
| Command / Flag | Description |
| :--- | :--- |
| `wsl --set-version Ubuntu 2` | Forces the WSL environment to upgrade to the WSL 2 architecture (Linux kernel update). |
| `nano <filename>` | Opens the Nano command-line text editor. |
| `docker build -t <image-name> .` | Builds a Docker image from a Dockerfile located in the current directory (`.`). |
| `docker run` | Instructs the Docker daemon to create and start a new container from an image. |
| `-d` | Detached mode. Runs the container in the background and frees up your terminal. |
| `-p 8080:80` | Port mapping. Maps port 8080 on the host to port 80 in the container. |
| `--name <string>` | Assigns a static, DNS-resolvable identifier to the container. Without this, Docker assigns a random string. |
| `-v <volume>:<path>` | Volume mount flag. The left side is the host volume managed by Docker; the right side is the target directory inside the container (e.g., `-v fyp-database-data:/app/data`). |
| `alpine` | A highly optimized, 5MB Linux distribution used as a lightweight base image. |
| `sleep 100` | Initialization command. Alpine has no default running process. If you don't tell it to sleep, it will instantly exit. |
| `docker exec ... sh -c "..."` | `exec` runs a command inside an already running container. `sh -c` opens a shell session inside Alpine and executes the string passed to it. |
| `docker ps` | Lists all actively running containers. |
| `docker rm -f <id>` | Force-stops and removes a running container. |
