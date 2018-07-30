# source this file to setup the package
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 --tries=3 https://github.com/A2-Collaboration/travis-container-packets/releases/download/APLCON-master/APLCON.tar.bz2
tar -xjf APLCON.tar.bz2
rm APLCON.tar.bz2
export APLCONSYS=$(pwd)/APLCON
export LD_LIBRARY_PATH=$APLCONSYS/build/APLCON:$LD_LIBRARY_PATH
