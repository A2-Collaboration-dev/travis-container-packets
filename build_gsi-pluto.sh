#!/bin/sh
if [ -z "$TRAVIS_TAG" ]; then exit 0; fi
set -e
BASEDIR=$PWD
# Get sources
echo "Getting sources..."
git clone https://github.com/A2-Collaboration/gsi-pluto.git

# Build library
echo "Building..."
cd gsi-pluto 
make -j2
# Tar library
echo "Build done, tarring..."
cd $BASEDIR
tar -jc --file=gsi-pluto.tar.bz2 gsi-pluto
echo "Created tarball:"
ls -lah gsi-pluto.tar.bz2
