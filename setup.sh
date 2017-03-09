# source this file to setup the package
wget https://github.com/A2-Collaboration-dev/travis-container-packets/releases/download/cern-root/cern-root.tar.bz2
tar -xjf cern-root.tar.bz2
rm cern-root.tar.bz2
cd cern-root && source ./bin/thisroot.sh && cd ..
