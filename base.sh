#!/bin/sh

# Spotify
sudo add-apt-repository "deb http://repository.spotify.com stable non-free "
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59 
# Numix Theme
sudo add-apt-repository ppa:numix/ppa
# FLUX
sudo add-apt-repository ppa:kilian/f.lux

# Update
sudo apt-get update

# Gnome Classic
sudo apt-get install gnome-session-fallback

# Compiz settings manager & tweak tool
sudo apt-get install compiz-plugins compizconfig-settings-manager gnome-tweak-tool

# Essentials
sudo apt-get install htop pidgin wine chromium-browser filezilla python2.7-dev git network-manager-openvpn nmap whois skype curl p7zip-full conky-all build-essential libtool autotools-dev automake libconfig-dev ncurses-dev checkinstall check git libswscale-dev libsdl-dev libopenal-dev libopus-dev libssl-dev libvpx-dev yasm virtualbox spotify-client vlc pidgin-otr unrar zsh nodejs npm fluxguii


# WebDev
sudo apt-get install libcurl4-gnutls-dev php5-common php5-cli php5-gd php5-mcrypt php5-mysql php5-curl php5-json mariadb-server php-mysqlnd php-pear apache2 libapache2-mod-php5

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
curl -sS https://getcomposer.org/installer | php -- --filename=composer --install-dir=bin

# Grunt
npm install -g grunt-cli
# Bower
npm install -g bower

# Apache
sudo a2dismod autoindex
sudo a2enmod rewrite
sudo ln -s /etc/php5/conf.d/mcrypt.ini /etc/php5/mods-available
sudo php5enmod mcrypt
sudo a2enmod headers
sudo service apache2 restart

# Virtualbox permissions
sudo adduser me vboxusers

# Numix Theme
sudo apt-get install numix-gtk-theme numix-icon-theme-circle numix-wallpaper-saucy

# Oh My zsh
curl -L http://install.ohmyz.sh | sh
chsh -s /bin/zsh

# Screenfetch
wget -O screenfetch 'https://raw.github.com/KittyKatt/screenFetch/master/screenfetch-dev'
chmod +x screenfetch
sudo mv screenfetch /usr/bin/

# Privacy
gsettings set com.canonical.Unity.Lenses disabled-scopes "['more_suggestions-amazon.scope', 'more_suggestions-u1ms.scope', 'more_suggestions-populartracks.scope', 'music-musicstore.scope', 'more_suggestions-ebay.scope', 'more_suggestions-ubuntushop.scope', 'more_suggestions-skimlinks.scope']"

