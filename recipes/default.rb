#
# Cookbook Name:: QualiMap
# Recipe:: default
#
# Copyright (c) 2016 Eagle Genomics Ltd, Apache License, Version 2.0.
##########################################################

package %w(unzip tar) do
  action :install
end

##########################################################

include_recipe 'build-essential'
include_recipe 'java'

##########################################################
# here for use by serverspec

magic_shell_environment 'QUALIMAP_VERSION' do
  value node['QualiMap']['version']
end

magic_shell_environment 'QUALIMAP_DIR' do
  value node['QualiMap']['dir']
end

##########################################################

remote_file "#{Chef::Config[:file_cache_path]}/#{node['QualiMap']['filename']}" do
  source node['QualiMap']['url']
  action :create_if_missing
end

execute "unzip #{Chef::Config[:file_cache_path]}/#{node['QualiMap']['filename']} -d #{node['QualiMap']['install_dir']}" do
  not_if { ::File.exist?("#{node['QualiMap']['dir']}/qualimap") }
end

link "#{node['QualiMap']['bin_path']}/qualimap" do
  to "#{node['QualiMap']['dir']}/qualimap"
end

##########################################################
