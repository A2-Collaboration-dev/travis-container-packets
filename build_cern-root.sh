#!/bin/sh
set -e
BASEDIR=$PWD
echo "Number of processors: $(nproc)"
# Get sources
echo "Getting sources..."
git clone -b v5-34-00-patches-A2 --single-branch https://github.com/A2-Collaboration/root root-git

# Build library
echo "Configuring..."
mkdir -p $BASEDIR/root
cd root-git
./configure --prefix=$BASEDIR/root
echo "Building..."
# make really outputs so much that travis aborts,
# so convert it to dots (STDERR is still seen)
make -j$(nproc) | awk '{printf "."}'
make -j$(nproc) install
# Tar library
echo "Build done, tarring..."
cd $BASEDIR
tar -jc --file=cern-root.tar.bz2 root
echo "########################################################################"
echo "Created tarball $BASEDIR/cern-root.tar.bz2 with version $GCC_BUILD_VERSION"
echo "########################################################################"
