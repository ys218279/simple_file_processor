# simple_file_processor


This Bash script automates the process of downloading files from a JSON file containing dependency URLs. It organizes the downloaded files into structured directories under an `assets/` folder.

## 📌 Features
- Creates an `assets/` directory if it doesn't exist.
- Reads dependencies from `dependencies.json`.
- Creates subdirectories for each dependency.
- Downloads files into their respective folders.

## 🛠️ Prerequisites
Ensure you have the following installed:
- **Bash** (Default in most Linux/macOS systems)
- **jq** (for parsing JSON)
- **wget** (for downloading files)

You can install `jq` and `wget` if missing:
```bash
# Debian/Ubuntu
sudo apt update && sudo apt install jq wget -y

# macOS (using Homebrew)
brew install jq wget
