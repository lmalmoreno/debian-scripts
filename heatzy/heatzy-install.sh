#!/bin/bash

# if absent, create config directory
mkdir --parents $HOME/.config

# install icon
sudo wget -O /usr/share/icons/heatzy.png https://raw.githubusercontent.com/NicolasBernaerts/icon/master/heatzy.png
sudo wget -O /usr/share/icons/smart-heater.png https://raw.githubusercontent.com/NicolasBernaerts/icon/master/smart-heater.png

# retrieve configuration file
wget -O $HOME/.config/heatzy.conf https://raw.githubusercontent.com/NicolasBernaerts/debian-scripts/master/heatzy/heatzy.conf

# install heatzy script
sudo wget -O /usr/local/bin/heatzy https://raw.githubusercontent.com/NicolasBernaerts/debian-scripts/master/heatzy/heatzy
sudo chmod +x /usr/local/bin/heatzy

# install heatzy-gui script
sudo wget -O /usr/local/bin/heatzy-gui https://raw.githubusercontent.com/NicolasBernaerts/debian-scripts/master/heatzy/heatzy-gui
sudo chmod +x /usr/local/bin/heatzy-gui

# desktop integration
sudo wget -O /usr/share/applications/heatzy.desktop https://raw.githubusercontent.com/NicolasBernaerts/debian-scripts/master/heatzy/heatzy.desktop
sudo chmod +x /usr/share/applications/heatzy.desktop
