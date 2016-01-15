# encoding: UTF-8
#
# Cookbook Name:: cmake
# Recipe:: default
#
# Copyright (C) 2014 Andre Weissflog
#
include_recipe 'build-essential'
include_recipe 'ark'

major = node['cmake']['major']
minor = node['cmake']['minor']
name  = "cmake-#{major}.#{minor}"
tar_name = "#{name}.tar.gz"
url   = "#{node['cmake']['url']}/v#{major}/#{tar_name}"

# for some reason ark configure + make_and_install doesn't work, so just unpack
ark 'cmake' do
  url url
  action [ :put ]
end

bash 'configure_make_install' do
    cwd '/usr/local/cmake'
    code <<-EOH
    ./bootstrap && make && make install
    EOH
end

