echo " * 2 ------------- > INSTALL S -- N -- M "
DEBIAN_FRONTEND=noninteractive apt-get -f install  -y sudo
DEBIAN_FRONTEND=noninteractive apt-get -f install  -y \
        jq  htop wget build-essential apt-utils \
        sudo \
        software-properties-common     \
        wget  locate  curl git tor supervisor \
        ffmpeg

apt-get --assume-yes autoclean
apt-get --assume-yes autoclean
apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
echo " * 2 ++++++++++++++++++++++++ > DONE !!! S -- N -- M "
echo " * 3 ------------- > INSTALL geckodriver-v0.32.0 "
df
