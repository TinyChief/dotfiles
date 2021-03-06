# Dotfiles

Here is my configuration files for:
- [zsh & oh-my-zsh](#zsh--oh-my-zsh)
- [i3-gaps](#i3-gaps)
- [rofi](#rofi)
- [polybar](#polybar)
- [vim/neovim](#vim/neovim)
- [vifm](#vifm)
- [kitty terminal](#kitty-terminal)

## After installing of above
``` !# /bin/bash
$ git clone https://github.com/tinychief/dotfiles
$ cd dotfiles
$ ./install.sh
```

## zsh & oh-my-zsh
- zsh-autosuggestions and zsh-syntax-highlighting plugins
- useful aliases (run `cfa` to see all)

### Don't forget
Install `zsh` as default shell
```
$ chsh -s /bin/zsh
```

## i3-gaps
- `$mod Mod4` (aka Windows button)
- `$mod+q` - to close window
- `$mod+d` - to rofi drun
- `$mod+Shift+q` - to rofi powermenu
### Don't forget
Change default apps to what you use
```
$ vim $HOME/.config/i3/config # or cfi
```
edit these lines
```
set $myBrowser brave
set $myTerm kitty
set $myFileManager pcmanfm
```

## polybar
- simple and neat
- bottom placement
- systray, pulseaudio-control, i3wm, date modules
### Don't forget
- if want place bar on top
- Edit pulseaudio-control module to have your devices

## vim/neovim
- plugins like lightline, nerdtree, vim-easymotion, etc.
- onedark colorscheme
- useful shortcuts (`vv` - vertical split, `Q` - :wq, `\` - :nohlsearch, etc)

### Don't forget
Launch `vim` (or `nvim`) and install plugins:
```
:PluginInstall
```

## vifm
- custom theme

## kitty terminal
- banch of themes ([from](https://github.com/dexpota/kitty-themes))
### Don't forget
Set theme you like, changing `$HOME/.config/kitty/kitty.conf`
```
# Set theme
include themes/ayu.conf
```

