### Description ###

Compile and install a recent cmake version from source tarball.

What happens under the hood:

* this now simply uses the _ark_ cookbook to download, configure, make
and make-install a cmake source tarball from http://www.cmake.org/files/v2.8/cmake-2.8.12.1.tar.gz
* the actual cmake version can be configured through attributes

### Requirements ###
#### Platform: ####

* Ubuntu/Debian

#### Dependencies ####

* build-essential
* ark

### Attributes ###
#### Default recipe attributes: ####

* `node['cmake']['major']` - cmake's major version (default "2.8")
* `node['cmake']['minor']` - cmake's minor version (default "12.1")

### Author ####
Author:: Andre Weissflog (floooh@gmail.com)
