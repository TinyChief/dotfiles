echo 'Let`s install goodies'

zsh --version
git --version

dest=$HOME
conf_dir=$dest/.config

git clone https://github.com/robbyrussell/oh-my-zsh $dest/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions $dest/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $dest/.oh-my-zsh/plugins/zsh-syntax-highlighting

cp -r zsh-custom/* $dest/.oh-my-zsh/custom
if test -f $dest/.zshrc; then
    echo "$dest/.zshrc exists. Backuping to .zshrc.bak"
    cp $dest/.zshrc $dest/.zshrc.bak
fi
cp .zshrc $dest
cp .zshrc-arco $dest
cp -r .bin $dest

### i3-gaps ###
i3_conf=$conf_dir/i3/config
[[ -f $i3_conf ]] && echo "$i3_conf exists. Backuping to config.bak"; cp $i3_conf $i3_conf.bak
cp -r i3 $conf_dir

### polybar ###
polybar_conf=$conf_dir/polybar/config
polybar_launch=$conf_dir/polybar/launch.sh
[[ -f $polybar_conf ]] && echo "$polybar_conf exists. Backuping to config.bak"; cp $polybar_conf $polybar_conf.bak
[[ -f $polybar_launch ]] && echo "$polybar_launch exists. Backuping to launch.sh.bak"; cp $polybar_launch $polybar_launch.bak
cp -r polybar $conf_dir

### rofi ###
rofi_conf=$conf_dir
[[ -d $rofi_conf ]] && echo "$rofi_conf exists. Backuping to rofi.bak"; cp -r $rofi_conf $rofi_conf.bak
cp -r rofi $conf_dir

### vim ###
vimrc=$dest/.vimrc
[[ -f $vimrc ]] && echo "$vimrc exists. Backuping to .vimrc.bak"; cp $vimrc $vimrc.bak
cp .vimrc $dest
nvim_init=$conf_dir/nvim/init.vim
[[ -f $nvim_init ]] && echo "$nvim_init exists. Backuping to $nvim_init.bak"; cp $nvim_init $nvim_init.bak
cp -r nvim $conf_dir
git clone https://github.com/VundleVim/Vundle.vim.git $dest/.vim/bundle/Vundle.vim

### kitty ###
kitty_conf=$conf_dir/kitty/kitty.conf
[[ -f $kitty_conf ]] && echo "$kitty_conf exists. Backuping to $kitty_conf.bak"; cp $kitty_conf $kitty_conf.bak
cp -r kitty $conf_dir

### vifm ###
vifmrc=$conf_dir/vifm/vifmrc;
[[ -f $vifmrc ]] && echo "$vifmrc exists. Backuping to $vifmrc.bak"; cp $vifmrc "$vifmrc.bak"
cp -r vifm $conf_dir

echo 'We are done!'
