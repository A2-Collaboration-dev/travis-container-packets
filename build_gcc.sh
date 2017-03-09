#!/bin/sh
set -e
BASEDIR=$PWD
echo "Number of processors: $(nproc)"
# Get sources
echo "Getting sources..."
export GCC_BUILD_VERSION=4.9.2
wget --no-check-certificate http://ftp.gnu.org/gnu/gcc/gcc-$GCC_BUILD_VERSION/gcc-$GCC_BUILD_VERSION.tar.bz2
echo "Untarring..."
tar -xjf gcc-$GCC_BUILD_VERSION.tar.bz2
rm gcc-$GCC_BUILD_VERSION.tar.bz2
cd gcc-$GCC_BUILD_VERSION/

# Build library
echo "Downloading prerequisites..."
./contrib/download_prerequisites
mkdir build
cd build
echo "Configuring..."
mkdir -p gcc-$GCC_BUILD_VERSION/gcc
../configure --enable-languages=c,c++,fortran --disable-multilib --enable-shared --enable-threads=posix --prefix=$(pwd)/gcc-$GCC_BUILD_VERSION/gcc
echo "Building..."
make -j$(nproc)
make -j$(nproc) install
# Tar library
echo "Build done, tarring..."
cd gcc-$GCC_BUILD_VERSION/
tar -jc --file=gcc.tar.bz2 gcc
mv gcc.tar.bz2 $BASEDIR
echo "########################################################################"
echo "Created tarball $BASEDIR/gcc.tar.bz2 with version $GCC_BUILD_VERSION"
echo "########################################################################"
