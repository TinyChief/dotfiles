# Configuration files

Here is my configuration files for:
- Vim
- Hyper.js
- ZSH + oh-my-zsh

# Vim
1. Install `vim`
2. Copy `.vimrc` and `.vim` into `~/`
3. Install `Vundle` plugin manager
4. Launch `vim` (type `vim test.txt`) and install plugins: `: PluginInstall`


## ZSH + Oh-my-zsh
1. Install `zsh` as default shell
2. Copy `.zshrc` into `~/`
2. Install `oh-my-zsh`:
```
$ git clone https://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh
```
3. Copy `./custom/` into `~/.oh-my-zsh`
4. Install `powerlevel9k` theme:
```
$ git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

## Hyper.js
1. Install `Hyper.js` terminal emulator
2. Copy `./hyper.js` into `~/`

## Hhop
1. Install `htop` via `Homebrew` or your system package manager (for Ubuntu `sudo apt-get htop`)
2. Copy `./htop/` into `~/.config/`
