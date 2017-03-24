# source this file to setup the package
wget https://github.com/A2-Collaboration-dev/travis-container-packets/releases/download/APLCON-master/APLCON.tar.bz2
tar -xjf APLCON.tar.bz2
rm APLCON.tar.bz2
export APLCONSYS=$(pwd)/APLCON
export LD_LIBRARY_PATH=$APLCONSYS/build/APLCON:$LD_LIBRARY_PATH
