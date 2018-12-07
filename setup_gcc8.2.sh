# source this file to setup the package
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 --tries=3 https://github.com/A2-Collaboration/travis-container-packets/releases/download/APLCONpp-gcc8.2/APLCONpp.tar.xz
tar xJf APLCONpp.tar.xz
rm APLCONpp.tar.xz
export APLCONSYS=$(pwd)/APLCONpp
