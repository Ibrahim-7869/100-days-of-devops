# Master Dockerfile Reference Guide

## Core Instructions (The Build Pipeline)

* **`FROM`**: The foundation. Defines the base image. Every Dockerfile *must* start with this. (e.g., `FROM ubuntu:22.04`).
* **`WORKDIR`**: The `cd` command for containers. It sets the active directory. Any `RUN`, `COPY`, or `CMD` instructions that follow will execute inside this directory. (e.g., `WORKDIR /app`).
* **`COPY`**: Transfers files from your physical laptop/host into the container's filesystem. (e.g., `COPY . .` copies everything from the current host directory to the current container `WORKDIR`).
* **`RUN`**: Executes terminal commands *during the image build process*. Used to install packages or compile code. It permanently bakes the result into a new image layer. (e.g., `RUN apt-get update && apt-get install -y curl`).
* **`ENV`**: Sets persistent environment variables inside the container. (e.g., `ENV PORT=8080`).
* **`EXPOSE`**: Primarily for documentation. It tells other engineers (and Docker) which port the container is designed to listen on. It does *not* actually publish the port to the host machine; you still need `-p` in the `docker run` command.
* **`CMD`**: The default execution command. This dictates what the container actually does *when it boots up*. It can be overridden by the user at runtime. 
* **`ENTRYPOINT`**: Similar to `CMD`, but it *cannot* be easily overridden. It locks the container into running a specific executable. Often used in tandem with `CMD` (where `ENTRYPOINT` is the executable, and `CMD` provides the default arguments).

---

## Common Base Images & Their Default Execution (CMD)

When you pull a base image, you inherit its default `CMD`. If you supply your own `CMD` in your Dockerfile, you overwrite theirs. You must know what you are overwriting.

1. **OS/Foundational Images (For custom builds & debugging):**
   * `alpine`: The smallest Linux distribution (~5MB).
     * **Default CMD:** `CMD ["/bin/sh"]` (Boots a basic shell).
   * `ubuntu`: Standard, heavier Linux OS.
     * **Default CMD:** `CMD ["/bin/bash"]` (Boots a bash shell).

2. **Web Server Images (Ready to serve traffic):**
   * `nginx`: Enterprise web server and reverse proxy.
     * **Default CMD:** `CMD ["nginx", "-g", "daemon off;"]` (Starts the Nginx background process). *Never overwrite this unless you know exactly what you are doing, or the server will crash.*
   * `httpd`: Apache web server.
     * **Default CMD:** `CMD ["httpd-foreground"]`

3. **Runtime Images (For executing uncompiled code):**
   * `node`: JavaScript runtime.
     * **Default CMD:** `CMD ["node"]` (Starts the Node REPL. You usually override this with `CMD ["node", "your_app.js"]`).
   * `python`: Python runtime.
     * **Default CMD:** `CMD ["python3"]` (Starts the Python REPL. Override with `CMD ["python", "app.py"]`).

4. **Compiler Images (Used as "Builders" in Multi-Stage Builds):**
   * `golang`: Go compiler and toolchain.
     * **Default CMD:** `CMD ["bash"]` (Just a shell. It relies on you using `RUN go build` during the Dockerfile phase).
