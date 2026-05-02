A Dockerfile is a plain text document that serves as a blueprint or script for automating the creation of Docker container images. It contains a sequential series of instructions that the Docker daemon executes to assemble a layered filesystem, transforming a base OS into a specialized, runnable application environment. By codifying the infrastructure setup—installing dependencies, copying code, and configuring settings—Dockerfiles ensure that the resulting containerized application acts identically across development, testing, and production environments.

The core instructions—FROM, RUN, COPY, and CMD—each serve distinct roles in the image build lifecycle:

FROM: Sets the foundation by specifying the base image (e.g., FROM python:3.9) and must be the first instruction.
RUN: Executes commands (like apt-get install) during the build process to install software, creating a new, read-only layer for each command.
COPY: Transfers files or directories from the local build context (your machine) into the container's filesystem.
CMD: Defines the default command or executable that runs automatically when a container starts; unlike RUN, it does not build the image but instructs the container what to do upon startup.

