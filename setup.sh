# source this file to setup the package
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 --tries=3 https://github.com/A2-Collaboration/travis-container-packets/releases/download/pluto6-master/pluto6.tar.xz
tar xJf pluto6.tar.xz
rm pluto6.tar.xz
export PLUTOSYS=$(pwd)/pluto6/build
export LD_LIBRARY_PATH=$PLUTOSYS:$LD_LIBRARY_PATH
