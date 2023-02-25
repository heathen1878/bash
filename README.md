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

# TODO
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

sudo apt install build-essential curl file git jq zip unzip shellcheck -y -qq

# Install Az Cli
UBUNTU_VERSION=$(lsb_release -rs)

curl --silent https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add
curl --silent "https://packages.microsoft.com/config/ubuntu/$UBUNTU_VERSION/prod.list" | sudo tee /etc/apt/sources.list.d/msprod.list

curl --silent --location https://aka.ms/InstallAzureCLIDeb | sudo bash
```


## Configure aliases

Create a bash_aliases file and add the following:

```
alias ls="ls -alhF --color --group-directories-first"
```

## Configure prompt using Starship

Starship is a great tool for configuring your command prompt to provide more information...for example the Git branch you're in etc.







