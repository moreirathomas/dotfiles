# Dotfiles

New Mac setup.

## Installation

### Install Xcode Command Line Tools

Use 'xcode-select' to install Xcode Command Line Tools

```sh
xcode-select --install
```

Verify installation of Xcode Command Line Tools

```sh
xcode-select -p
# /Library/Developer/CommandLineTools
git --version
# git version 2.30.1 (Apple Git-130)
```

### Install Oh My Zsh

Basic install

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Install Homebrew

Brew install

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Add Homebrew shell configuration (needed on Apple Silicon)

```sh
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/moreirathomas/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/moreirathomas/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```
