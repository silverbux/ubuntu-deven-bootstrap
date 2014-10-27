#Install apache
sudo apt-get install apache2 apache2-utils

#Install Mysql and Php-mysql
sudo apt-get install mysql-server libapache2-mod-auth-mysql php5-mysql

#Install PHP
sudo apt-get install php5 php5-mysql php-pear php5-gd  php5-mcrypt php5-curl php5-dev

#Install MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongod start
sudo service mongod stop
sudo service mongod restart

#Install PHP Mongo Connector
sudo pecl install php_mongo

#Create Mongo PHP extension ini
touch /etc/php5/mods-available/mongodb.ini
echo "extension=mongo.so" > /etc/php5/mods-available/mongodb.ini

#Enable PHP Mongodb
sudo php5enmod mongodb

#Restart Apache
sudo service apache2 restart

#Install Git
sudo apt-get install git
sudo apt-get install git-core

#Install Curl
sudo apt-get install curl

#Install RockMongo
git clone https://github.com/iwind/rockmongo.git /var/www/html/rockmongo

#Installing ajenti
wget -O- https://raw.github.com/Eugeny/ajenti/master/scripts/install-ubuntu.sh | sudo sh

#Install Nodejs
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs

#Install MongoDb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongod start
sudo service mongod stop
sudo service mongod restart

#Install oh-my-zsh
sudo apt-get install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s /bin/zsh

#Install Ruby
\curl -sSL https://get.rvm.io | bash -s stable
source /home/silverbux/.rvm/scripts/rvm
#echo "export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting" >>  /home/silverbux/.zshrc
rvm install ruby-2.1.1 --disable-binary
rvm reload  && rvm use 2.1.1 --default
rvm reload
sudo apt-get install ca-certificates
gem update --system
gem install rb-gsl bundler github-pages rails
gem cleanup

#Install Git
sudo apt-get install git
sudo apt-get install curl

#Install Nodejs Packages
sudo npm install -g bower
sudo npm install -g express
sudo npm install -g grunt-cli
sudo npm install -g jshint
sudo npm install -g karma-cli
sudo npm install -g less
sudo npm install -g meanio@latest
sudo npm install -g mongoose
sudo npm install -g nodemon

#Install Sublime Text 3
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

#Install Package Control
git clone git://github.com/wbond/sublime_package_control.git ~/.config/sublime-text-3/Packages/Package\ Control

#Install Sublime Space-Grey Theme
git clone https://github.com/silverbux/spacegray.git ~/.config/sublime-text-3/Packages/Theme\ -\ Spacegray

#Install EverPad
sudo add-apt-repository ppa:nvbn-rm/ppa
sudo apt-get update
sudo apt-get install everpad

#Install Unity Tweak Tool
sudo apt-get install unity-tweak-tool

#Install Skype
sudo dpkg --add-architecture i386
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update && sudo apt-get install skype

#Install Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable

#Install Emma Mysql-Manager
sudo apt-get install emma

#Install docky
sudo apt-get install docky

#Install vlc
sudo apt-get install vlc

#Disable overlay Scrollbars:
gsettings set com.canonical.desktop.interface scrollbar-mode normal

#Put the username back on the the panel
gsettings set com.canonical.indicator.session show-real-name-on-panel true

#Make playing media easy
sudo apt-get install ubuntu-restricted-extras

#install gdebi to install deb files instead of using ubuntu software center
sudo apt-get install aptitude synaptic gdebi-core

#remove dots in login screen
sudo xhost +SI:localuser:lightdm
sudo su lightdm -s /bin/bash
gsettings set com.canonical.unity-greeter draw-grid false

#Install Java
sudo apt-get install default-jre

#let's clean stuff
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get update
sudo apt-get clean

echo "========== FINISH!!! =========="