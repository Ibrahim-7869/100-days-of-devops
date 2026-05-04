# Day 9: Custom Docker Images & Build Processes

## Core Concepts
* **The Dockerfile:** The step-by-step blueprint used to engineer a custom container image.
* **Image Layers:** Every `RUN`, `COPY`, and `ADD` instruction in a Dockerfile creates a read-only layer. Docker caches these layers to drastically speed up future builds.
* **Build Context:** The set of files located in the directory where you run the `docker build` command. Docker sends this entire context to the daemon before building.

## Essential Commands
* `docker build -t <image_name>:<tag> .`: Compiles a Dockerfile in the current directory (`.`) into a usable image.
* `docker image ls`: Lists all images currently stored on your local machine.
* `docker rmi <image_id>`: Deletes a specific image from your local registry.
