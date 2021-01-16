echo "cleaning environment......"
sudo rm -rf /usr/share/dotnet /etc/mysql /etc/php /etc/apt/sources.list.d >> /dev/null
docker rmi `docker images -q` >> /dev/null
sudo apt-get remove account-plugin-facebook account-plugin-flickr account-plugin-jabber account-plugin-salut account-plugin-twitter account-plugin-windows-live account-plugin-yahoo aisleriot brltty duplicity empathy empathy-common example-content gnome-accessibility-themes gnome-contacts gnome-mahjongg gnome-mines gnome-orca gnome-screensaver gnome-sudoku gnome-video-effects gnomine landscape-common libreoffice-avmedia-backend-gstreamer libreoffice-base-core libreoffice-calc libreoffice-common libreoffice-core libreoffice-draw libreoffice-gnome libreoffice-gtk libreoffice-impress libreoffice-math libreoffice-ogltrans libreoffice-pdfimport libreoffice-style-galaxy libreoffice-style-human libreoffice-writer libsane libsane-common mcp-account-manager-uoa python3-uno rhythmbox rhythmbox-plugins rhythmbox-plugin-zeitgeist sane-utils shotwell shotwell-common telepathy-gabble telepathy-haze telepathy-idle telepathy-indicator telepathy-logger telepathy-mission-control-5 telepathy-salut totem totem-common totem-plugins printer-driver-brlaser printer-driver-foo2zjs printer-driver-foo2zjs-common printer-driver-m2300w printer-driver-ptouch printer-driver-splix >> /dev/null
sudo -E apt-get -y purge azure-cli ghc* zulu* hhvm llvm* firefox google* dotnet* powershell openjdk* mysql* php* >> /dev/null
sudo -E apt-get clean >> /dev/null
sudo -E apt-get -qq update >> /dev/null
echo "installing dependencies....."
sudo apt install \
     adb autoconf automake axel bc bison build-essential \
     ccache clang cmake expat fastboot flex g++ \
     g++-multilib gawk gcc gcc-multilib git gnupg gperf \
     htop imagemagick lib32ncurses5-dev lib32z1-dev libtinfo5 libc6-dev libcap-dev \
     libexpat1-dev libgmp-dev '^liblz4-.*' '^liblzma.*' libmpc-dev libmpfr-dev libncurses5-dev \
     libsdl1.2-dev libssl-dev libtool libxml2 libxml2-utils '^lzma.*' lzop \
     maven ncftp ncurses-dev patch patchelf pkg-config pngcrush \
     pngquant python2.7 python-all-dev re2c schedtool squashfs-tools subversion \
     texinfo unzip w3m xsltproc zip zlib1g-dev lzip \
     libxml-simple-perl apt-utils \
     libncurses5 curl -y >> /dev/null
