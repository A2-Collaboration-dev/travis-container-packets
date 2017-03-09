#!/bin/sh
set -e
BASEDIR=$PWD
echo "Number of processors: $(nproc)"
# Get sources
echo "Getting sources..."
git clone https://github.com/A2-Collaboration-dev/APLCON.git

# Build library
echo "Configuring..."
cd APLCON && mkdir build && cd build
cmake ..
echo "Building..."
make -j$(nproc)
# Tar library
echo "Build done, tarring..."
cd $BASEDIR
tar -jc --file=APLCON.tar.bz2 APLCON
echo "########################################################################"
echo "Created tarball $BASEDIR/APLCON.tar.bz2"
echo "########################################################################"
