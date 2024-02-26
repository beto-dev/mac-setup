## TL;DR

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

### 1. GitHub SSH key

- Setup the SSH key:
    
    ```bash
    mkdir -p ~/.ssh && 
    cd ~/.ssh && 
    ssh-keygen -t rsa -b 4096 -C “alb.tejos.dev@gmail.com” && 
    eval "$(ssh-agent -s)" && 
    ssh-add -K ~/.ssh/github && 
    pbcopy < ~/.ssh/github.pub
    ```
    
- Add the SSH key to GitHub:
    
    [GitHub > Settings > Keys](https://github.com/settings/keys) 

### 2. Clone the [repository](https://github.com/beto-dev/mac-setup)

```bash
git clone git@github.com:beto-dev/mac-setup.git
```

### 3. Run the installation script

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
