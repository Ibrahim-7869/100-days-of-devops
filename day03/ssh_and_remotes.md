# Day 3: SSH Security & GitHub Integration

## Theory: Asymmetric Cryptography
* **Private Key:** Your digital identity. It must NEVER be shared or uploaded.
* **Public Key:** A "lock" you provide to servers (GitHub) so they can verify your identity.
* **SSH Protocol:** Provides a secure, encrypted channel over an insecure network.

## Essential Commands
| Command | Description |
| :--- | :--- |
| `ssh-keygen -t ed25519` | Generates a modern, high-security SSH keypair. |
| `cat ~/.ssh/id_ed25519.pub` | Displays your public key to copy to GitHub. |
| `ssh -T git@github.com` | Tests your SSH connection to GitHub. |
| `git remote add origin <URL>` | Links your local repo to the remote GitHub repo. |
| `git push -u origin main` | Pushes local code to GitHub and sets the upstream branch. |
