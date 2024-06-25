# dots

This repository contains my configurations for the Neovim dev environment,
including some specific configurations for plugins, keymaps and other things to
boost productivity. Currently I'm using [LazyVim][1] with some plugins and
settings to simplify the use of Neovim. I'm also using Zellij, WezTerm and Fish as part of my development environment.

This README will be a guide for me in case that I need to install or reinstall
the configurations in any computer.

## Homebrew

``` shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

// if it doesn't work try using
set install_script (curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)
```

## Installing `nvim`

```shell
brew install nvim
```

## Install `node` and `npm`

```shell
brew install node
brew install npm
```

## Install `git`

```shell
brew install git
```

## Install `fish`

```shell
brew install fish

// setting as default:
// returning a path
which fish

// add it as an available shell
echo whichFishResultingPath | sudo tee -a /etc/shells

// set it as default
sudo chsh -s whichFishResultingPath
```

## Install `OhMyFish`

```shell
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
```

## Some complements

```shell
brew install gcc
brew install fzf
brew install fd
brew install ripgrep
```

## Install `zellij`

```shell
brew install zellij
```

## Install `wezTerm`

```shell
brew install --cask wezterm
```

[1]: https://github.com/LazyVim/LazyVim
