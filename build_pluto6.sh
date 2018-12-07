#!/bin/sh
if [ -z "$TRAVIS_TAG" ]; then exit 0; fi
set -e
BASEDIR=$PWD
# Get sources
echo "Getting sources..."
git clone https://github.com/A2-Collaboration/pluto6.git

# Build library
echo "Building..."
cd pluto6
mkdir build
cd build
cmake ..
make -j2
# Tar library
echo "Build done, tarring..."
cd $BASEDIR
tar Jc --file=pluto6.tar.xz pluto6
echo "Created tarball:"
ls -lah pluto6.tar.xz
