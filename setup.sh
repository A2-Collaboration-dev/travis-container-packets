# source this file to setup the package
wget https://github.com/A2-Collaboration/travis-container-packets/releases/download/cern-root-v5-34-00-patches-A2/cern-root.tar.bz2
tar -xjf cern-root.tar.bz2
rm cern-root.tar.bz2
cd cern-root && source ./bin/thisroot.sh && cd ..
