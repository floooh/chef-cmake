### Description ###

Compile and install a recent cmake version from source tarball:

* make sure package _build-essentials_ is present
* download source tarbar from http://www.cmake.org/files/v2.8/cmake-2.8.12.1.tar.gz to chef's cache (/var/chef/cache)
* ./configure && make && make install

### Requirements ###
#### Platform: ####

* Ubuntu/Debian

### Attributes ###
#### Default recipe attributes: ####

* `node['cmake']['major']` - cmake's major version (default "2.8")
* `node['cmake']['minor']` - cmake's minor version (default "12.1")

### Author ####
Author:: Andre Weissflog (floooh@gmail.com)
