# This PowerShell script is designed to automate the setup of a Visual Studio Code environment.
# It performs two main tasks:
# 1. It installs a list of VS Code extensions. The extensions are read from a JSON file.
# 2. It sets up user settings for VS Code by copying a settings.json file to the appropriate location, 
#    overwriting any existing settings file if necessary.

# Parse the JSON file
$extensions = Get-Content -Path extensions.json | ConvertFrom-Json

# This section is for installing VS Code extensions
# Loop through each extension in the array
foreach ($extension in $extensions) {
  # Install the current extension
  code --install-extension $extension
}

# This section is for setting up VS Code user settings
# Define the source and destination paths for the settings file
$sourcePath = "settings.json"
$destinationPath = "$env:APPDATA\Code\User\settings.json"

# Copy the settings file to the destination, overwriting if it already exists
Copy-Item -Path $sourcePath -Destination $destinationPath -Force