#!/bin/sh
if [ -z "$TRAVIS_TAG" ]; then exit 0; fi
set -e
BASEDIR=$PWD
echo "Number of processors: $(nproc)"
# Get sources
echo "Getting sources..."
git clone -b v6-14-00-patches --single-branch http://github.com/root-project/root.git cern-root-git
cd cern-root-git
git checkout -b v6-14-06 v6-14-06
cd ..

# Build library
echo "Configuring..."
mkdir -p $BASEDIR/cern-root-build
mkdir -p $BASEDIR/cern-root
cd cern-root-build
cmake ../cern-root-git -DCxx14=ON -Dbuiltin_lzma=OFF -Dbuiltin_zlib=OFF -Dfortan=ON -Dmathmore=ON -DCMAKE_INSTALL_PREFIX=$BASEDIR/cern-root
echo "Building..."
# make really outputs so much that travis aborts,
# so convert it to dots (STDERR is still seen)
make -j2 # | awk '{printf "."}'
make -j2 install
# Tar library
echo "Build done, tarring..."
cd $BASEDIR
tar Jc --file=cern-root6.tar.xz cern-root
echo "Created tarball:"
ls -lah cern-root6.tar.xz
