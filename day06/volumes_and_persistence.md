# Day 6: Container Ephemerality & Data Persistence

## Core Concepts
* **Container Ephemerality:** By default, containers are temporary. If a container crashes or is deleted, all data written inside its isolated filesystem is permanently destroyed.
* **Docker Volumes:** Managed directly by the Docker daemon. The safest and most optimal way to persist database records or application states across container lifecycles.
* **Bind Mounts:** Maps a specific directory on your host operating system (e.g., your laptop) directly into the container. Excellent for local development where you want code changes to reflect immediately inside the container without rebuilding the image.

## Essential Commands
* `docker volume create <name>`: Provisions a new, empty volume managed by Docker.
* `docker volume ls`: Lists all active volumes.
* `docker run -v <volume_name>:<container_path>`: Attaches a Docker volume to a specific path inside the container.
* `docker run -v /absolute/host/path:/container/path`: Creates a Bind Mount linking your local machine to the container.
