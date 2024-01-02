sudo apt update
sudo apt install -y libopencv-dev

# This will install OpenCV and its dependencies. 
# The libraries will be located in /usr/include/opencv4 for headers and /usr/lib/x86_64-linux-gnu for library files.

pkg-config --cflags --libs opencv4