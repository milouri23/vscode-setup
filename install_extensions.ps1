param (
  [Parameter(Mandatory = $true)]
  [ValidateSet('InstallExtensions', 'CopySettings', 'Both')]
  [string]$Action
)

if ($Action -eq 'InstallExtensions' -or $Action -eq 'Both') {
  $extensions = Get-Content -Path extensions.json | ConvertFrom-Json

  foreach ($extension in $extensions) {
    code --install-extension $extension
  }
}

if ($Action -eq 'CopySettings' -or $Action -eq 'Both') {
  $sourcePath = "settings.json"
  $destinationPath = "$env:APPDATA\Code\User\settings.json"

  # Copy the settings file to the destination, overwriting if it already exists
  Copy-Item -Path $sourcePath -Destination $destinationPath -Force
}