# source this file to setup the package
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 --tries=3 https://github.com/A2-Collaboration/travis-container-packets/releases/download/cmake-3.1.2/cmake.tar.bz2
tar -xjf cmake.tar.bz2
rm cmake.tar.bz2
export PATH=$(pwd)/cmake/bin:$PATH
