# Configuration files

Here is my configuration files for:
- Neovim
- ZSH + oh-my-zsh
- rofi
- i3
- polybar

## Neovim
1. Install `nvim`
```
$ sudo apt install neovim    # for Ubuntu
$ brew install neovim        # for MacOS
```
2. Copy `.vimrc` to `$HOME`
3. Install `Vundle` plugin manager
```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
4. Launch `nvim` and install plugins: 
```
:PluginInstall
```

## ZSH + Oh-my-zsh
1. Install `zsh` as default shell
```
$ chsh -s /bin/zsh
```
2. Copy `.zshrc` to `$HOME`
3. Install `oh-my-zsh` (zsh framework):
```
$ git clone https://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh
```
3. Copy `zsh-custom/` into `~/.oh-my-zsh/custom`
4. Install `powerlevel10k` theme:
```
$ git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```
