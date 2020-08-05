# Mac Setup

Related post

[macOS Catalina: Setting up a Mac for Development](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/)


- **Git**
    - **Configuration**
        - File

            ```bash
            touch ~/.gitconfig
            ```

        - Manual

            ```bash
            git --version
            ```

            ```bash
            git config --list --show-origin
            ```

            ```bash
            git config --global user.name "Alberto Tejos" &&
            git config --global user.email "alb.tejos.dev@gmail.com" 
            ```

            ```bash
            git config --global core.editor "code --wait" &&
            git config --global -e
            ```

            ```bash
            git config --list --show-origin
            ```

    - **SSH access**

        ```bash
        cd ~/.ssh && 
        ssh-keygen -t rsa -b 4096 -C "alb.tejos.dev@gmail.com"
        ```

        ```bash
        eval "$(ssh-agent -s)"
        ```

        ```bash
        ssh-add -K ~/.ssh/github
        ```

        ```bash
        pbcopy < ~/.ssh/github.pub
        ```

- **Homebrew**
    - **Installation**

        ```bash
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        ```

        ```bash
        brew update
        ```

    - **Brewfile**
- **Oh My Zsh**

    ```bash
    ## install
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

- **macOS**
    - Software List
        - iTerm2 - Oh My Zsh
        - Visual Studio Code, and its extensions
        - IntellijIDEA
        - Chrome
        - 1password
        - Notion
        - Slack
        - Postman
        - Spotify
        - Dropbox
        - Dash
        - Logi Options
        - Unsplash
        - Alfred
        - Whatsapp
        - Magnet
        - AppZapper
        - Android Transfer
        - VLC
        - Docker