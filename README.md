### Description ###

This is a Chef cookbook to compile and install a recent cmake version from source tarball.

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
