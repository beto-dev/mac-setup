## Installation steps

### 1. GitHub SSH key

1. Run this code in your terminal to setup the SSH key:
    
    ```bash
    cd ~/.ssh && 
    ssh-keygen -t rsa -b 4096 -C "your_email@domain.com"
    eval "$(ssh-agent -s)"
    ssh-add -K ~/.ssh/github
    pbcopy < ~/.ssh/github.pub #the public key will be copied to the clipboard
    ```
    
2. Clic the following link to add the SSH key to GitHub:
    
    [GitHub > Settings > Keys](https://github.com/settings/keys) 

### 2. Clone the [repository](https://github.com/beto-dev/mac-setup)

```bash
git clone git@github.com:beto-dev/mac-setup.git
```

### 3. Run the installation script

```bash
./install.sh
```

## Process summary

The script ****./install.sh** will execute the following scripts (ordered by execution):

| brew.sh | To install, update, bundle and display Homebrew apps. |
| --- | --- |
| zsh.sh | To install and configure Oh My Zsh.  |
| git.sh | To setup Git configuration. |
| nvm.sh | To install Node Version Manager + NPM and Node. |
| gcp.sh | To install Google Cloud SDK + kubectl. |
| vscode-extensions-intall.sh | To install Visual Studio Code extensions. |