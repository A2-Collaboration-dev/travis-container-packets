#!/bin/sh
if [ -z "$TRAVIS_TAG" ]; then exit 0; fi
set -e
BASEDIR=$PWD
# Get sources
echo "Getting sources..."
git clone https://github.com/A2-Collaboration-dev/APLCONpp.git

# Build library
echo "Configuring..."
cd APLCONpp && mkdir build && cd build
cmake ..
echo "Building..."
make -j2
# Tar library
echo "Build done, tarring..."
cd $BASEDIR
tar Jc --file=APLCONpp.tar.xz APLCONpp
echo "Created tarball:"
ls -lah APLCONpp.tar.xz
