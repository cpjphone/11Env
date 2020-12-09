git clone https://github.com/opencv/opencv.git
sudo apt-get update
sudo apt-get install build-essential cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
root:~/Git/opencv# mkdir build
root:~/Git/opencv# cd build/
root:~/Git/opencv/build# 
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local ..
make -j4

