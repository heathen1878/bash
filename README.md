# bash
Bash learning...

## Local environment setup

These instructions can be used within an Ubuntu OS or an Ubuntu instance running within WSL.

### WSL 

Install WSL
```shell
wsl --install
```

Install Ubuntu

```shell
# Check available versions
wsl --list --online

wsl --install -d Ubuntu-22.04
```

## Docker

#TODO
- [ ] Create a Docker container with all the tooling incl. Starship configured.


## SSH Keys

Create an SSH key for GitHub, Azure DevOps or whatever source control...

```shell
# For example
ssh-keygen -C "SSH Key for GitHub" -t rsa -b 2048 -f ~/.ssh/github
# Enter a passphrase when prompted
```

Add the contents of github.pub - as per the above example - to GitHub.

**NOTE**
If you have multiple SSH keys then use a config file, placed within `.ssh`

```
#Example configuration
Host github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/github
    AddKeysToAgent yes

Host vs-ssh.visualstudio.com
    HostName vs-ssh.visualstudio.com
    User git
    IdentityFile ~/.ssh/azdo
    AddKeysToAgent yes
```

### Install Keychain

This tool is useful to load SSH keys with passphrases when you start your terminal.

```shell
# Install Keychain
sudo apt install keychain
```

Then add the following to `.bashrc`

```
# For example
eval `keychain --eval --agents ssh ssh_file1 ssh_file2`
```

Reload bashrc `. .bashrc`

## Install Tooling

### Essential tools
```shell
sudo apt update -y -qq
sudo apt upgrade -y -qq

sudo apt install build-essentials curl file git jq zip unzip shellcheck -y -qq
```





