#!/bin/sh

# Display welcome message and info
echo "\nWelcome to automatic Visual Studio Code installer with extensions by Andre Sieverding\n"

# Get absolute directory path of current file
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# Get absolute directory path of vs code installation
vscode_dir="${HOME}/Library/Application Support/Code/User"

# Install vscode extensions
echo "Installing Visual Studio Code extensions...\n"
extensions_list="${dir}/vscode/extensions-list.txt"
for LINE in $(cat $extensions_list)
do
	code --install-extension "$LINE"
done
echo "\n"

# Copy all configurations
echo "Copying files...\n"
cp "${dir}/vscode/settings.json" "${vscode_dir}/settings.json"

# Done! :)
echo "\nDone ✅\nEnjoy your customized Visual Studio Code Editor!\n"
