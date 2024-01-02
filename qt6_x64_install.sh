sudo apt install -y libgl-dev
sudo apt install --reinstall libxcb-xinerama0

# for qt creator can't start up error!
sudo apt-get install libxcb-cursor0
mkdir Downloads
cd Downloads
wget https://download.qt.io/official_releases/online_installers/qt-unified-linux-x64-online.run
chmod 777 qt-unified-linux-x64-online.run
./qt-unified-linux-x64-online.run