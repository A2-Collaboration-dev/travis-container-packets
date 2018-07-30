# source this file to setup the deployed package
if [[ ! -z "$CXX" && "$CXX" != "g++" ]]; then
    return
fi
wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 --tries=3 https://github.com/A2-Collaboration/travis-container-packets/releases/download/gcc-4.9.2/gcc.tar.bz2
tar -xjf gcc.tar.bz2
rm gcc.tar.bz2
export PATH=$(pwd)/gcc/bin:$PATH
export LIBRARY_PATH=$(pwd)/gcc/lib64:$LIBRARY_PATH
export LD_LIBRARY_PATH=$(pwd)/gcc/lib64:$LD_LIBRARY_PATH
export CPLUS_INCLUDE_PATH=$(pwd)/gcc/include/c++/4.9.2:$CPLUS_INCLUDE_PATH
