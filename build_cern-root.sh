#!/bin/sh
set -e
BASEDIR=$PWD
echo "Number of processors: $(nproc)"
# Get sources
echo "Getting sources..."
git clone -b v5-34-00-patches-A2 --single-branch https://github.com/A2-Collaboration/cern-root cern-root-git

# Build library
echo "Configuring..."
mkdir -p $BASEDIR/cern-root
cd cern-root
cmake ../cern-root-git
echo "Building..."
# make really outputs so much that travis aborts,
# so convert it to dots (STDERR is still seen)
make # | awk '{printf "."}'
#make -j$(nproc) install
# Tar library
echo "Build done, tarring..."
cd $BASEDIR
tar -jc --file=cern-root.tar.bz2 cern-root
echo "########################################################################"
echo "Created tarball $BASEDIR/cern-root.tar.bz2"
echo "########################################################################"
