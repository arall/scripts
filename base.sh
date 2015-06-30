#!/bin/sh

# Spotify
sudo add-apt-repository "deb http://repository.spotify.com stable non-free "
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
# Numix Theme
sudo add-apt-repository ppa:numix/ppa
# ffmpeg
sudo add-apt-repository ppa:kirillshkrogalev/ffmpeg-next
# ScreenStudio
sudo add-apt-repository ppa:soylent-tv/screenstudio

# Update
sudo apt-get update

# Gnome Classic
sudo apt-get install gnome-session-fallback

# Compiz settings manager & tweak tool
sudo apt-get install compiz-plugins compizconfig-settings-manager gnome-tweak-tool

# Essentials
sudo apt-get install htop curl p7zip-full build-essential libtool autotools-dev automake libconfig-dev libncurses5-dev checkinstall check libswscale-dev libsdl1.2-dev libopenal-dev libopus-dev libssl-dev libvpx-dev yasm unrar

# Personal
sudo apt-get install zsh chromium-browser pidgin pidgin-otr conky gparted screenstudio wine virtualbox spotify-client vlc ffmpeg

# Netsec
sudo apt-get install nmap whois aircrack-ng netcat john

# Anti-surveillance
sudo apt-get install network-manager-openvpn

# Dev
sudo apt-get install git python2.7-dev

# WebDev
sudo apt-get install filezilla libcurl4-gnutls-dev php5-common php5-cli php5-gd php5-mcrypt php5-mysql php5-curl php5-json mariadb-server php5-mysqlnd mongodb php5-mongo php-pear apache2 libapache2-mod-php5 nodejs npm

# Numix Theme
sudo apt-get install numix-gtk-theme numix-icon-theme-circle

# F.lux
sudo apt-get install python-glade2 python-appindicator
git clone https://github.com/Kilian/f.lux-indicator-applet.git
cd f.lux-indicator-applet
chmod +x setup.py
sudo ./setup.py install

# Uninstall default apps
sudo apt-get remove empathy empathy-common webbrowser-app evolution

# PHP Depend
sudo pear channel-discover pear.pdepend.org
# PHP Code Sniffer
sudo pear install PHP_CodeSniffer
# PHP Mess Detector
sudo pear channel-discover pear.phpmd.org
sudo pear install phpmd/PHP_PMD-1.5.0
# PHP CS Fixer
sudo curl http://get.sensiolabs.org/php-cs-fixer.phar -o /usr/local/bin/php-cs-fixer
sudo chmod a+x /usr/local/bin/php-cs-fixer
# PHP Composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/bin/composer

# Grunt
sudo npm install -g grunt-cli
# Bower
sudo npm install -g bower

# Apache
sudo a2dismod autoindex
sudo a2enmod rewrite
sudo ln -s /etc/php5/conf.d/mcrypt.ini /etc/php5/mods-available
sudo php5enmod mcrypt
sudo a2enmod headers
sudo service apache2 restart

# Virtualbox permissions
sudo adduser me vboxusers

# Oh My ZSH
curl -L http://install.ohmyz.sh | sh
chsh -s /bin/zsh

# Screenfetch
wget -O screenfetch 'https://raw.github.com/KittyKatt/screenFetch/master/screenfetch-dev'
chmod +x screenfetch
sudo mv screenfetch /usr/bin/

# Privacy
gsettings set com.canonical.Unity.Lenses disabled-scopes "['more_suggestions-amazon.scope', 'more_suggestions-u1ms.scope', 'more_suggestions-populartracks.scope', 'music-musicstore.scope', 'more_suggestions-ebay.scope', 'more_suggestions-ubuntushop.scope', 'more_suggestions-skimlinks.scope']"