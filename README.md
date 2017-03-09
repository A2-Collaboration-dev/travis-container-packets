# Travis-Container packets

A repository to compile and store packets for Travis container-based
architecture.

## Available packets

| Name | version | status |
| ---- | ------------ | ------ |
| CMake | 3.1.2 | [![Build Status](https://travis-ci.org/A2-Collaboration-dev/travis-container-packets.svg?branch=cmake)](https://travis-ci.org/A2-Collaboration-dev/travis-container-packets) |
| GCC | 4.9.2 | [![Build Status](https://travis-ci.org/A2-Collaboration-dev/travis-container-packets.svg?branch=gcc)](https://travis-ci.org/A2-Collaboration-dev/travis-container-packets) |
| APLCON | [master](https://github.com/A2-Collaboration-dev/APLCON/tree/master) | [![Build Status](https://travis-ci.org/A2-Collaboration-dev/travis-container-packets.svg?branch=APLCON)](https://travis-ci.org/A2-Collaboration-dev/travis-container-packets) |
| CERN ROOT | [v5-34-00-patches-A2](https://github.com/A2-Collaboration/cern-root/tree/v5-34-00-patches-A2)  | [![Build Status](https://travis-ci.org/A2-Collaboration-dev/travis-container-packets.svg?branch=cern-root)](https://travis-ci.org/A2-Collaboration-dev/travis-container-packets) |
| GSI HADES Pluto | [master](https://github.com/A2-Collaboration/gsi-pluto)  | [![Build Status](https://travis-ci.org/A2-Collaboration-dev/travis-container-packets.svg?branch=gsi-pluto)](https://travis-ci.org/A2-Collaboration-dev/travis-container-packets) |



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
before_install:
- source <(curl -SLs https://raw.githubusercontent.com/A2-Collaboration-dev/travis-container-packets/APLCON/setup.sh)
```

### CERN ROOT
```yml
before_install:
- source <(curl -SLs https://raw.githubusercontent.com/A2-Collaboration-dev/travis-container-packets/cern-root/setup.sh)
```

### GSI HADES Pluto
```yml
before_install:
- source <(curl -SLs https://raw.githubusercontent.com/A2-Collaboration-dev/travis-container-packets/gsi-pluto/setup.sh)
```
