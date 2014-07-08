## Basic
pacman -S git
#pacman -S the_silver_searcher (TODO)

### EDITORS
pacman -S vim emacs
yaourt -S sublime-text

### LANGUAGES

## Ruby with RVM

pacman -S libyaml

curl -L get.rvm.io | bash -s stable
rvm install 2.1.0
rvm install 1.9.3
rvm list
rvm use 2.1.0
sudo usermod -aG rvm $USER

//TODO: check gem install
echo "gem: --user-install" > /etc/gemrc

gem install pry




## Haskell
pacman -S ghc cabal-install
# Update cabal to the lastest version, this can be a long time ( 2 minutes )
cabal update
cabal install cabal cabal-install --global

## Clojure ( This install jdk7-openjdk jre7-openjdk jre7-openjdk-headless)
pacman -S clojure

## NodeJS
pacman -S nodejs 

## Mongodb
pacman -S mongodb