The [./install.sh](https://github.com/beto-dev/mac-setup/blob/master/install.sh) script will execute the following scripts (ordered by execution) in order to setup our mac:

| File | Description |
| --- | --- |
| brew.sh | To install, update, bundle and display Homebrew apps. |
| zsh.sh | To install and configure Oh My Zsh.  |
| git.sh | To setup Git configuration. |
| nvm.sh | To install Node Version Manager + NPM and Node. |
| gcp.sh | To install Google Cloud SDK + kubectl. |
| vscode-extensions-install.sh | To install Visual Studio Code extensions. |

---

## Installation steps

### 1. Clone the [repository](https://github.com/beto-dev/mac-setup) by HTTPS

```bash
git clone git@github.com:beto-dev/mac-setup.git
```

### 2. Run the installation script

```bash
./install.sh
```
---

## iTerm settings

- Appareance 
    - Theme: Minimal
- Profiles
    - Working directoy: Reuse previous session directory
    - Keys
        - Key mapping
            - Presets: Natural Text Editing
