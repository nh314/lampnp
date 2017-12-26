#!/bin/bash
PHANTOM_JS="phantomjs-1.9.8-linux-x86_64"
apt-get install -yqq build-essential chrpath libssl-dev libxft-dev 
apt-get install -yqq libfreetype6 libfreetype6-dev
apt-get install -yqq libfontconfig1 libfontconfig1-dev
apt-get install -yqq wget
cd ~
wget https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2
mv $PHANTOM_JS.tar.bz2 /usr/local/share/
cd /usr/local/share/
tar xvjf $PHANTOM_JS.tar.bz2
ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/share/phantomjs
ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin/phantomjs
ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/bin/phantomjs
rm -fr $PHANTOM_JS.tar.bz2