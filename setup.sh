# source this file to setup the package
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 --tries=3 https://github.com/A2-Collaboration/travis-container-packets/releases/download/cern-root-v5-34-00-patches-A2/cern-root.tar.bz2
tar -xjf cern-root.tar.bz2
rm cern-root.tar.bz2
cd cern-root && source ./bin/thisroot.sh && cd ..
