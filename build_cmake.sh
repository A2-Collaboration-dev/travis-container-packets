#!/bin/sh
set -e
BASEDIR=$PWD
CMAKE_VERSION=3.1.2
# Get sources
echo "Getting sources..."
wget http://www.cmake.org/files/v3.1/cmake-$CMAKE_VERSION.tar.gz
echo "Untarring..."
tar -xzf cmake-$CMAKE_VERSION.tar.gz
rm cmake-$CMAKE_VERSION.tar.gz
cd cmake-$CMAKE_VERSION

# Build library
echo "Building..."
./bootstrap
make -j$(nproc)
# Rearrange folders
make -j$(nproc) package
mkdir build
mv cmake-$CMAKE_VERSION.tar.gz build
cd build
tar -xzf cmake-$CMAKE_VERSION.tar.gz
rm cmake-$CMAKE_VERSION.tar.gz
mv cmake-$CMAKE_VERSION cmake
# Tar library
echo "Build done, tarring..."
tar -jc --file=cmake.tar.bz2 cmake
mv cmake.tar.bz2 $BASEDIR
echo "########################################################################"
echo "Created tarball $BASEDIR/cmake.tar.bz2 with version $CMAKE_VERSION"
echo "########################################################################"
