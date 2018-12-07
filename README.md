# Travis-Container packets

A repository to compile and store packets for Travis container-based
architecture.

## Available packets

| Name | version | status |
| ---- | ------------ | ------ |
| CMake | 3.1.2<br />3.13.1 | [![Build Status](https://travis-ci.org/A2-Collaboration/travis-container-packets.svg?branch=cmake)](https://travis-ci.org/A2-Collaboration/travis-container-packets) |
| GCC | 4.9.2<br />8.2.0 | [![Build Status](https://travis-ci.org/A2-Collaboration/travis-container-packets.svg?branch=gcc)](https://travis-ci.org/A2-Collaboration/travis-container-packets) |
| APLCON | [master](https://github.com/A2-Collaboration/APLCON/tree/master) | [![Build Status](https://travis-ci.org/A2-Collaboration/travis-container-packets.svg?branch=APLCON)](https://travis-ci.org/A2-Collaboration/travis-container-packets) |
| APLCONpp | [master](https://github.com/A2-Collaboration/APLCONpp/tree/master) | [![Build Status](https://travis-ci.org/A2-Collaboration/travis-container-packets.svg?branch=APLCONpp)](https://travis-ci.org/A2-Collaboration/travis-container-packets) |
| CERN ROOT | [v5-34-00-patches-A2](https://github.com/A2-Collaboration/cern-root/tree/v5-34-00-patches-A2)  | [![Build Status](https://travis-ci.org/A2-Collaboration/travis-container-packets.svg?branch=cern-root)](https://travis-ci.org/A2-Collaboration/travis-container-packets) |
| CERN ROOT 6 | [v6-10-08](https://github.com/root-project/root/tree/v6-10-00-patches)  | [![Build Status](https://travis-ci.org/A2-Collaboration/travis-container-packets.svg?branch=cern-root6)](https://travis-ci.org/A2-Collaboration/travis-container-packets) |
| GSI HADES Pluto | [master](https://github.com/A2-Collaboration/gsi-pluto)  | [![Build Status](https://travis-ci.org/A2-Collaboration/travis-container-packets.svg?branch=gsi-pluto)](https://travis-ci.org/A2-Collaboration/travis-container-packets) |
| GSI HADES Pluto 6 | [master](https://github.com/A2-Collaboration/pluto6)  | [![Build Status](https://travis-ci.org/A2-Collaboration/travis-container-packets.svg?branch=pluto6)](https://travis-ci.org/A2-Collaboration/travis-container-packets) |



## How to use

In your travis file, you can add the following commands to download, install and set paths:

### CMake 3.1.2

```yml
before_install:
- source <(curl -SLs https://raw.githubusercontent.com/A2-Collaboration/travis-container-packets/cmake/setup.sh)
```

### CMake 3.13.1

```yml
before_install:
- source <(curl -SLs https://raw.githubusercontent.com/A2-Collaboration/travis-container-packets/cmake/setup_3.13.sh)
```

### GCC 4.9.2

```yml
before_install:
- source <(curl -SLs https://raw.githubusercontent.com/A2-Collaboration/travis-container-packets/gcc/setup.sh)
```

### GCC 8.2.0

```yml
before_install:
- source <(curl -SLs https://raw.githubusercontent.com/A2-Collaboration/travis-container-packets/gcc/setup_8.2.sh)
```

### APLCON

Note: Obsolete! Use APLCONpp.

```yml
before_install:
- source <(curl -SLs https://raw.githubusercontent.com/A2-Collaboration/travis-container-packets/APLCON/setup.sh)
```

### APLCONpp

```yml
before_install:
- source <(curl -SLs https://raw.githubusercontent.com/A2-Collaboration/travis-container-packets/APLCONpp/setup.sh)
```

version compiled with GCC 8.2.0:
```yml
before_install:
- source <(curl -SLs https://raw.githubusercontent.com/A2-Collaboration/travis-container-packets/APLCONpp/setup_gcc8.2.sh)
```

### CERN ROOT

```yml
before_install:
- source <(curl -SLs https://raw.githubusercontent.com/A2-Collaboration/travis-container-packets/cern-root/setup.sh)
```

### CERN ROOT 6

```yml
before_install:
- source <(curl -SLs https://raw.githubusercontent.com/A2-Collaboration/travis-container-packets/cern-root6/setup.sh)
```

### GSI HADES Pluto

```yml
before_install:
- source <(curl -SLs https://raw.githubusercontent.com/A2-Collaboration/travis-container-packets/gsi-pluto/setup.sh)
```

### GSI HADES Pluto 6

```yml
before_install:
- source <(curl -SLs https://raw.githubusercontent.com/A2-Collaboration/travis-container-packets/pluto6/setup.sh)
```
