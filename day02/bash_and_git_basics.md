# Day 2: Bash Scripting & Git Initialization

## Theory: Automation & Snapshots
* **The Shebang (`#!/bin/bash`):** Tells the kernel which interpreter to use for the script.
* **The Staging Area:** A middle ground in Git where you "prepare" files before permanently recording them.
* **Commits:** Immutable snapshots of your project's state.

## Essential Commands
| Command | Description |
| :--- | :--- |
| `#!/bin/bash` | The header for every bash script. |
| `git init` | Transforms a local folder into a Git repository. |
| `git add <file>` | Moves a file to the Staging Area. |
| `git commit -m "msg"` | Saves the staged snapshot to the local database. |
| `git status` | Shows which files are tracked, untracked, or modified. |
| `./script.sh` | Executes a script in the current directory (requires +x permission). |
