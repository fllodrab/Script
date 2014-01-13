#!/bin/bash

cd ../

sudo apt-get update
sudo apt-get install -y language-pack-en
sudo apt-get install -y build-essential
sudo apt-get install -y python-dev
sudo apt-get install -y python-setuptools

# Instalar web.py
sudo easy_install web.py
#Instalar lenguaje de templating
sudo easy_install mako
#Instalar driver para mongodb-server
sudo easy_install pymongo
#Instalar interfaz de twitter
sudo easy_install tweepy
# Instalar el feedparser
sudo easy_install feedparser

# Recuperamos la aplicación del repositorio
git clone https://github.com/fllodrab/Python.git
cd Python
chmod +x p4RSS.py
# Para que el script siga ejecutando despues de que salga de ssh
sudo nohup ./p4RSS.py 80 &


