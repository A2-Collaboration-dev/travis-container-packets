# Travis-Container packets

A repository to compile and store packets for Travis container-based
architecture.

## Available packets

| Name | version | status |
| ---- | ------------ | ------ |
| CMake | 3.1.2 | [![Build Status](https://travis-ci.org/A2-Collaboration-dev/travis-container-packets.svg?branch=cmake)](https://travis-ci.org/A2-Collaboration-dev/travis-container-packets) |
| GCC | 4.9.2 | [![Build Status](https://travis-ci.org/A2-Collaboration-dev/travis-container-packets.svg?branch=gcc)](https://travis-ci.org/A2-Collaboration-dev/travis-container-packets) |
| APLCON | master | [![Build Status](https://travis-ci.org/A2-Collaboration-dev/travis-container-packets.svg?branch=APLCON)](https://travis-ci.org/A2-Collaboration-dev/travis-container-packets) |


## How to use

In your travis file, you can add the following commands to download, install and set paths:

### CMake

```yml
before_install:
- source <(curl -SLs https://raw.githubusercontent.com/A2-Collaboration-dev/travis-container-packets/cmake/setup.sh)
```

### GCC

```yml
before_install:
- source <(curl -SLs https://raw.githubusercontent.com/A2-Collaboration-dev/travis-container-packets/gcc/setup.sh)
```

### APLCON
```yml
- source <(curl -SLs https://raw.githubusercontent.com/A2-Collaboration-dev/travis-container-packets/APLCON/setup.sh)
```
