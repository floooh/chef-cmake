#
# Cookbook Name:: cmake
# Recipe:: default
#
# Copyright (C) 2014 Andre Weissflog
#

cache_path = Chef::Config['file_cache_path']
major = node['cmake']['major']
minor = node['cmake']['minor']
name  = "cmake-#{major}.#{minor}"
tar_name = "#{name}.tar.gz"
url   = "#{node['cmake']['url']}/v#{major}/#{tar_name}"
tar_path  = "#{cache_path}/#{tar_name}"

# install required packages
node['cmake']['packages'].each do |pkg|
    package pkg do
        action :install
    end
end

# download tarball
remote_file "#{tar_path}" do
    source "#{url}"
    notifies :run, "bash[install_cmake]", :immediately
end

# .configure, make, make install
bash "install_cmake" do
    cwd cache_path
    code <<-EOH
    tar -xf #{tar_name}
    cd #{name}
    ./configure
    make
    make install
    EOH
end

