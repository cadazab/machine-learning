#!/bin/bash
#sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get -y update
sudo apt-get -y upgrade
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3

#GUI
#sudo apt-get install -y ubuntu-desktop
sudo apt-get install -y gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal

#VNC
#sudo apt-get install -y tightvncserver
sudo apt-get install -y vnc4server

#Node
curl --silent --location https://deb.nodesource.com/setup_0.12 | sudo bash -
sudo apt-get install -y nodejs
apt-get install -y build-essential

#Octave
sudo apt-get install -y octave gnuplot

#Atom
#sudo apt-get install -y atom

#Sublime
sudo apt-get install -y sublime-text

#Chromium
sudo apt-get install -y chromium-browser

#ipython
sudo apt-get install -y libzmq-dev
sudo apt-get install -y python-dev
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
rm get-pip.py
sudo pip install "ipython[notebook]"

#oh-my-zsh
sudo apt-get install -y zsh
sudo sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo chsh -s /bin/zsh vagrant

#github pasword caching
git config --global credential.helper cache #Set git to use the credential memory cache
git config --global credential.helper 'cache --timeout=3600' #Set the cache to timeout after 1 hour (setting is in seconds)


