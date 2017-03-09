# Travis-Container packets

A repository to compile and store packets for Travis container-based
architecture.

## Available packets

| Name | version | status |
| ---- | ------------ | ------ |
| CMake | 3.1.2 | [![Build Status](https://travis-ci.org/A2-Collaboration-dev/travis-container-packets.svg?branch=cmake)](https://travis-ci.org/A2-Collaboration-dev/travis-container-packets) |
| GCC | 4.9.2 | [![Build Status](https://travis-ci.org/A2-Collaboration-dev/travis-container-packets.svg?branch=gcc)](https://travis-ci.org/A2-Collaboration-dev/travis-container-packets) |


## How to use

In your travis file, you can add the following commands to download, install and set paths:


### CMake

```yml
before_install:
  # Get CMake 3.1
  - wget https://github.com/A2-Collaboration-dev/travis-container-packets/releases/download/cmake-3.1.2/cmake.tar.bz2
  - tar -xjf cmake.tar.bz2
  - rm cmake.tar.bz2
  - export PATH=$(pwd)/cmake/bin:$PATH
```

### GCC

```yml
before_install:
  # Get GCC 4.9.2
  - if [ "$CXX" == "g++" ]; then wget https://github.com/A2-Collaboration-dev/travis-container-packets/releases/download/gcc-4.9.2/gcc.tar.bz2; fi
  - if [ "$CXX" == "g++" ]; then tar -xjf gcc.tar.bz2; fi
  - if [ "$CXX" == "g++" ]; then rm gcc.tar.bz2; fi
  - if [ "$CXX" == "g++" ]; then export PATH=$(pwd)/gcc/bin:$PATH; fi
  - if [ "$CXX" == "g++" ]; then export LIBRARY_PATH=$(pwd)/gcc/lib64:$LIBRARY_PATH; fi
  - if [ "$CXX" == "g++" ]; then export LD_LIBRARY_PATH=$(pwd)/gcc/lib64:$LD_LIBRARY_PATH; fi
  - if [ "$CXX" == "g++" ]; then export CPLUS_INCLUDE_PATH=$(pwd)/gcc/include/c++/4.9.2:$CPLUS_INCLUDE_PATH; fi
```
