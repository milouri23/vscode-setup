# Visual Studio Code Setup Automation

This repository contains a PowerShell script `install_extensions.ps1` that automates the setup of a Visual Studio Code environment. It performs two main tasks:

1. **VS Code Extensions Installation**: The script installs a list of VS Code extensions. The extensions are read from a JSON file named `extensions.json`. You can customize this file to include the extensions you need.

2. **VS Code User Settings Setup**: The script sets up user settings for VS Code by copying a `settings.json` file to the appropriate location, overwriting any existing settings file if necessary. You can customize the `settings.json` file according to your preferences.

## Usage

1. Customize the `extensions.json` and `settings.json` files as per your requirements.

2. Run the `install_extensions.ps1` script in PowerShell with the action parameter. The action parameter must be one of 'InstallExtensions', 'CopySettings', or 'Both'.

```powershell
./install_extensions.ps1 -Action InstallExtensions
./install_extensions.ps1 -Action CopySettings
./install_extensions.ps1 -Action Both
```

Please note that you need to have Visual Studio Code and PowerShell installed on your machine to use this script.

## Troubleshooting

### Prettier not formatting documents

If you encounter an issue where Prettier is not formatting your documents as expected, it might be due to a conflict with other extensions or a temporary issue with the extension itself.

Try the following steps to resolve this issue:

1. **Check your settings**: Ensure that Prettier is set as the default formatter in your settings. You can check this in your `settings.json` file.

2. **Disable conflicting extensions**: If you have other formatter extensions installed, they might be conflicting with Prettier. Try disabling other formatter extensions to see if that resolves the issue.

3. **Reinstall Prettier**: If the issue persists, try reinstalling the Prettier extension. You can do this by uninstalling the extension from the Extensions view in VS Code, restarting VS Code, and then reinstalling the extension.

Remember to restart VS Code after making these changes to ensure they take effect.

## License

[MIT](https://choosealicense.com/licenses/mit/)
