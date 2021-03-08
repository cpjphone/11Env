git clone https://github.com/davisking/dlib.git
apt install cmake
cd dlib
mkdir build
cd build
cmake .. -DUSE_AVX_INSTRUCTIONS=1
sudo apt-get install build-essential cmake pkg-config
sudo apt-get install libx11-dev libatlas-base-dev
sudo apt-get install libgtk-3-dev libboost-python-dev
root:~/Git/dlib/build# cmake --build . --config Release
sudo make install
sudo ldconfig
cd .. 
root:~/Git/dlib# sudo python3 setup.py install
# numpy-python
sudo apt-get install python-numpy
