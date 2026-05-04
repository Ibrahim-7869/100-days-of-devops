# Day 7: Docker Networks & Internal DNS Resolution

## Core Concepts
* **Bridge Networks:** The default network driver. Creating *custom* bridge networks allows isolated containers to communicate securely while blocking external access.
* **Internal DNS:** On a custom bridge network, Docker automatically resolves container names to internal IP addresses. You can ping a container by its name (e.g., `ping database_container`) instead of relying on hardcoded IPs that might change.
* **Port Mapping (Ingress):** Opening a portal from the host machine's network into the isolated container network.

## Essential Commands
* `docker network create <network_name>`: Engineers a new isolated bridge network.
* `docker network ls`: Lists all configured Docker networks.
* `docker run --network <network_name>`: Attaches a container to a specific network upon booting.
* `docker network inspect <network_name>`: Outputs detailed JSON telemetry about the network, including the internal IP addresses of all attached containers.
