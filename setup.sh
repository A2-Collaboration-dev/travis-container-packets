# source this file to setup the package
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 --tries=3 https://github.com/A2-Collaboration/travis-container-packets/releases/download/cern-root-v6-10-08/cern-root6.tar.xz
tar xJf cern-root6.tar.xz
rm cern-root6.tar.xz
cd cern-root && source ./bin/thisroot.sh && cd ..
