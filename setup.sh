# source this file to setup the package
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 --tries=3 https://github.com/A2-Collaboration/travis-container-packets/releases/download/APLCONpp-master/APLCONpp.tar.bz2
tar -xjf APLCONpp.tar.bz2
rm APLCONpp.tar.bz2
export APLCONSYS=$(pwd)/APLCONpp
