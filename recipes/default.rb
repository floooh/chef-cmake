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

ark 'cmake' do
  url url
  version "#{major}.#{minor}"
  action [:configure, :install_with_make]
end
