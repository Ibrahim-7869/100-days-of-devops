# Day 10: Image Optimization & Multi-Stage Builds

## Core Concepts
* **Multi-Stage Architecture:** Utilizing multiple `FROM` statements in a single Dockerfile. 
* **The Builder Stage:** A heavy, resource-intensive stage used strictly to compile source code (like Golang or C++) into an executable binary.
* **The Production Stage:** A lightweight stage (like Alpine Linux) that copies ONLY the final compiled binary from the builder stage, discarding the compiler and source code.
* **Attack Surface Reduction:** By eliminating OS tools, shells, and compilers from the final image, you drastically reduce the vectors an attacker can exploit if the container is compromised.

## Essential Commands
* `FROM golang:1.20 AS builder`: Aliases a build stage so it can be referenced later.
* `COPY --from=builder /app/server .`: Reaches back into the previous 'builder' stage to extract specific files into the current stage.
