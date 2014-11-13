#!/usr/bin/bash

# ============================================================================
# Bootstrap Main Tools
# ============================================================================

# Update Aptitude
sudo apt-get update
sudo apt-get dist-upgrade

# Install GSL for ruby-gsl
sudo apt-get install libgsl0ldbl libgsl0-dev libsasl2-dev

# Install Xsel
sudo apt-get install xsel

# Install Curl
sudo apt-get install curl

# Install Git latest version
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git

# Install oh-my-zsh
#sudo apt-get install zsh
#wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
#chsh -s /bin/zsh


# ============================================================================
# Web Development Tools
# ============================================================================

# Apache, Php, MySql
# ----------------------------------------------------------------------------

# Install Apache
sudo apt-get install apache2 apache2-utils

# Install MySql and Php-MySql
sudo apt-get install mysql-server libapache2-mod-auth-mysql php5-mysql

# Install PHP
sudo apt-get install php5 php5-mysql php-pear php5-gd  php5-mcrypt php5-curl php5-dev


# NodeJS, NPM, MongoDB
# ----------------------------------------------------------------------------

# Install NodeJS and Node Package Manager
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs

# Install Nodejs Packages
sudo npm install -g bower express grunt-cli karma-cli mean-cli mongoose nodemon

# Install MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install -y mongodb-org


# Php MongoDB Connector
# ----------------------------------------------------------------------------

# Install PHP MongoDB Connector
sudo pecl install mongo

# Create Mongo PHP extension ini
touch /etc/php5/mods-available/mongodb.ini
echo "extension=mongo.so" > /etc/php5/mods-available/mongodb.ini

# Enable PHP Mongodb
sudo php5enmod mongodb

# Restart Apache
sudo service apache2 restart

# Install RockMongo
git clone https://github.com/iwind/rockmongo.git /var/www/html/rockmongo

# Installing Ajenti
wget -O- https://raw.github.com/Eugeny/ajenti/master/scripts/install-ubuntu.sh | sudo sh


# Ruby Stuff
# ----------------------------------------------------------------------------

# Install Ruby
\curl -sSL https://get.rvm.io | bash -s stable
source $HOME/.rvm/scripts/rvm
sudo echo "export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting" >>  $HOME/.zshrc

# Not quite sure whether `.rvm` command will work after installation
# Terminal usually has to restart in order to recognize the command.

# Also, From the terminal preference window, command settings must:
# `Run command as a login shell` this lets your terminal emulate `/bin/bash`
rvm install ruby-2.1.3 --disable-binary
rvm reload
rvm use 2.1.3 --default
rvm reload
sudo apt-get install ca-certificates
gem update --system
gem install rb-gsl bundler github-pages rails
gem cleanup


# Text Editors
# ----------------------------------------------------------------------------

# Install Vim-Nox
#sudo apt-get install vim-nox

# Centralise Vim Stuff
#mkdir -p .vim/.viminfo .vim/backups/ .vim/colors .vim/swaps .vim/undo

# Set .vimrc
#curl -o $HOME/.vimrc https://raw.githubusercontent.com/pongstr/dotfiles/master/bin/vim/.vimrc

# Set Vim colors to Ocean Dark
#curl -o $HOME/.vim/colors/Pongstr\ Base-16.vim https://raw.githubusercontent.com/pongstr/dotfiles/master/bin/vim/Pongstr%20Base-16.vim

# Install Sublime Text 3
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

# Install Package Control
git clone git://github.com/wbond/sublime_package_control.git $HOME/.config/sublime-text-3/Packages/Package\ Control

# Install Sublime Spacegray Theme
git clone https://github.com/silverbux/spacegray.git $HOME/.config/sublime-text-3/Packages/Theme\ -\ Spacegray


# Native Apps
# ----------------------------------------------------------------------------

# Install EverPad
sudo add-apt-repository ppa:nvbn-rm/ppa
sudo apt-get update
sudo apt-get install everpad

# Install Unity Tweak Tool
sudo apt-get install unity-tweak-tool

# Install Skype
sudo dpkg --add-architecture i386
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update && sudo apt-get install skype

# Install Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable

# Install Emma Mysql-Manager
sudo apt-get install emma

#Install docky
sudo apt-get install docky

#Install vlc
sudo apt-get install vlc

# Disable overlay Scrollbars:
gsettings set com.canonical.desktop.interface scrollbar-mode normal

#Put the username back on the the panel
gsettings set com.canonical.indicator.session show-real-name-on-panel true

# Make playing media easy
sudo apt-get install ubuntu-restricted-extras

# install gdebi to install deb files instead of using ubuntu software center
sudo apt-get install aptitude synaptic gdebi-core

#Open in terminal in folder
sudo apt-get install nautilus-open-terminal

#remove dots in login screen
#sudo xhost +SI:localuser:lightdm
#sudo su lightdm -s /bin/bash
#gsettings set com.canonical.unity-greeter draw-grid false;exit

#Install Java
sudo apt-get install default-jre

#Install Jekyll 
sudo apt-get install ruby-dev
sudo gem install jekyll

#let's clean stuff
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get update
sudo apt-get clean

# -------------------------------------------
# App List ( manual install )
# -------------------------------------------
# filezilla
# mysql workbench
# qbittorrent
# dropbox
# terminator
# gimp

echo "========== FINISH!!! =========="
