#!/bin/sh

#New Repos
#Spotify
sudo add-apt-repository "deb http://repository.spotify.com stable non-free "
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59 
#Numix Theme
sudo add-apt-repository ppa:numix/ppa
#Canonical ++
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"

#Update
sudo apt-get update

#Gnome Classic
sudo apt-get install gnome-session-fallback

#Compiz settings manager
sudo apt-get install compiz-plugins compizconfig-settings-manager

#Nvidia Optimus
sudo apt-get install bbswitch-dkms bumblebee-nvidia

#Essentials
sudo apt-get install libcurl4-gnutls-dev php5-common php5-cli php5-mysql php5-curl mysql-server apache2 libapache2-mod-php5 htop pidgin wine chromium-browser filezilla python2.7-dev git network-manager-openvpn nmap whois aircrack-ng gnome-tweak-tool skype indicator-multiload curl p7zip-full conky-all lm-sensors hddtemp build-essential libtool autotools-dev automake libconfig-dev ncurses-dev checkinstall check git libswscale-dev libsdl-dev libopenal-dev libopus-dev libvpx-dev yasm virtualbox spotify-client vlc

#Virtualbox permissions
sudo adduser me vboxusers

#Numix Theme
sudo apt-get install numix-gtk-theme numix-icon-theme-circle numix-wallpaper-saucy

#screenfetch
wget -O screenfetch 'https://raw.github.com/KittyKatt/screenFetch/master/screenfetch-dev'
chmod +x screenfetch
sudo mv screenfetch /usr/bin/

#Privacy
gsettings set com.canonical.Unity.Lenses disabled-scopes "['more_suggestions-amazon.scope', 'more_suggestions-u1ms.scope', 'more_suggestions-populartracks.scope', 'music-musicstore.scope', 'more_suggestions-ebay.scope', 'more_suggestions-ubuntushop.scope', 'more_suggestions-skimlinks.scope']"

