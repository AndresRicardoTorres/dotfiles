# Awesome
mkdir -p ~/.config/awesome/
cp awesome/rc.lua ~/.config/awesome/rc.lua

# Git
cp git/gitconfig ~/.gitconfig

# Vim
mkdir -p ~/.vim
cp vim/vimrc ~/.vimrc
cp -rf vim/colors ~/.vim/

# Zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

cp zsh/erikasv.zsh-theme ~/.oh-my-zsh/themes/
cp zsh/zshrc_mine ~/.zshrc
cp zsh/zkeybindings ~/.zkeybindings
cp zsh/zshrc_oh-my-zsh  ~/.zshrc_oh-my-zsh 

chsh -s /bin/zsh