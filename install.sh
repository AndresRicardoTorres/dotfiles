#!/bin/bash
# Instala o actualiza los archivos de configuracion

# Awesome
mkdir -p ~/.config/awesome/
cp awesome/rc.lua ~/.config/awesome/rc.lua

# Git
cp git/gitconfig ~/.gitconfig

# Vim
mkdir -p ~/.vim
if [ ! -d ~/.vim/bundle/ ]; then
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
cp vim/vimrc ~/.vimrc
cp -rf vim/colors ~/.vim/

# Xinit
cp xinit/xinitrc ~/.xinitrc 

# Yaourt
cp yaourt/yaourtrc ~/.yaourtrc

# Zsh
if [ ! -d ~/.oh-my-zsh/ ]; then 
  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

cp zsh/erikasv.zsh-theme ~/.oh-my-zsh/themes/
cp zsh/zshrc_mine ~/.zshrc
cp zsh/zkeybindings ~/.zkeybindings
cp zsh/zshrc_oh-my-zsh  ~/.zshrc_oh-my-zsh 

if [ ! "$SHELL" = "/bin/zsh" ]; then
  chsh -s /bin/zsh
fi
