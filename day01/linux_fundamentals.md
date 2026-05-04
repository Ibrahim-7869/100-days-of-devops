# Day 1: Linux Fundamentals & Environment Setup

## Theory: The Linux Philosophy
* **Everything is a File:** In Linux, hardware devices, directories, and processes are represented as files.
* **WSL2 (Windows Subsystem for Linux):** Not a simulation, but a utility VM running a genuine Linux kernel, allowing high-performance execution of DevOps tools.
* **File Permissions:** Divided into User (u), Group (g), and Others (o). Represented by Read (4), Write (2), and Execute (1).

## Essential Commands
| Command | Description |
| :--- | :--- |
| `ls -la` | List all files with detailed info (permissions, size, owner). |
| `cd ~` | Change directory to the user's Home folder. |
| `mkdir -p path/to/dir` | Create nested directories. |
| `chmod 755 <file>` | Give owner full access, others read/execute access. |
| `grep "ERROR" log.txt` | Search for a specific string within a file. |
| `cat > file.txt` | Create a file and start writing to it (Ctrl+D to save). |
