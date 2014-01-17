#
#   Cookbook Name: cmake
#   Attributes: default
#

default['cmake']['major'] = '2.8'
default['cmake']['minor'] = '12.1'
default['cmake']['url']   = 'http://www.cmake.org/files'
default['cmake']['packages'] = %w{ build-essential }
