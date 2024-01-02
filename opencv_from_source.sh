# install opencv
sudo apt install -y ffmpeg cmake

sudo apt-get install -y build-essential libgtk2.0-dev libgtk-3-dev libavcodec-dev libavformat-dev libjpeg-dev libswscale-dev libtiff5-dev

# streamer支持
sudo apt install -y libgstreamer-plugins-base1.0-dev libgstreamer1.0-dev
# 可选的依赖
sudo apt install -y libpng-dev libopenexr-dev libtiff-dev libwebp-dev

mkdir Downloads
cd Downloads

# download opencv4  source zip
wget https://github.com/opencv/opencv/archive/4.8.0.zip

# unzip
unzip 4.8.0.zip

cd opencv-4.8.0
mkdir build && cd build

cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..
cmake ..


make -j8
sudo make install

# delete zip and folder
# cd ..
# rm 4.8.0.zip
# rm -rf opencv4.8
