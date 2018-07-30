# source this file to setup the package
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 --tries=3 https://github.com/A2-Collaboration/travis-container-packets/releases/download/gsi-pluto-master/gsi-pluto.tar.bz2
tar -xjf gsi-pluto.tar.bz2
rm gsi-pluto.tar.bz2
export PLUTOSYS=$(pwd)/gsi-pluto
