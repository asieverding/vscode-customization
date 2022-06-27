#!/bin/sh

# Display welcome message and info
echo "\nWelcome to automatic Visual Studio Code backup script by Andre Sieverding\n"
echo "Backing up extensions and configurations into repository..."

# Get absolute directory path of current file
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# Get absolute directory path of vs code installation
vscode_dir="${HOME}/Library/Application Support/Code/User"

# Update extensions-list
echo "Updating extensions-list...\n"
code --list-extensions --show-versions > vscode/extensions-list.txt

# Copy all configurations
echo "Copying files...\n"
cp "${vscode_dir}/settings.json" "${dir}/vscode/settings.json"

# Done! :)
echo "\nDone ✅\n"
