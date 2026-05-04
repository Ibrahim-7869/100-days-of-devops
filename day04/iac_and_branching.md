# Day 4: Data Serialization & Git Branching

## Theory: Declarative Infrastructure
* **JSON/YAML:** Human-readable data formats used to define how infrastructure (servers, networks) should look.
* **Linting:** The process of checking code/data for syntax errors before execution.
* **Feature Branching:** Developing in isolation to keep the `main` branch stable and "production-ready."

## Essential Commands
| Command | Description |
| :--- | :--- |
| `jq '.' file.json` | Formats and validates JSON data. |
| `yamllint config.yaml` | Checks YAML files for syntax and indentation errors. |
| `git checkout -b <name>` | Creates a new branch and switches to it. |
| `git merge <name>` | Combines a feature branch back into the main branch. |
