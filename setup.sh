# source this file to setup the package
wget https://github.com/A2-Collaboration-dev/travis-container-packets/releases/download/cmake-3.1.2/cmake.tar.bz2
tar -xjf cmake.tar.bz2
rm cmake.tar.bz2
export PATH=$(pwd)/cmake/bin:$PATH
