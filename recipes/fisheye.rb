#
# Cookbook Name:: atlassian
# Recipe:: crucible
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "atlassian::default"

fisheye_attrs = node['atlassian']['fisheye']

group fisheye_attrs['group'] do
  action :create
end

user fisheye_attrs['user'] do
  action :create
  comment "application user for fisheye"
  gid fisheye_attrs['group']
  shell ""
end

ark "fisheye" do
  url fisheye_attrs['url']
  version fisheye_attrs['version']
  # ark only supports sha256, this md5...
  #checksum '3021f20ccf77b988197fd8300d5ab9a1'
  path node['atlassian']['home_dir_base']
  owner fisheye_attrs['user']
  group fisheye_attrs['group']
  action :put
end

%w{ instance_dir log_dir }.each do |dir|
  directory fisheye_attrs[dir] do
    owner fisheye_attrs['user']
    group fisheye_attrs['group']
    mode "0644"
    recursive true
  end
end

execute "copy_config.xml" do
  command "cp #{fisheye_attrs['home_dir']}/config.xml #{fisheye_attrs['instance_dir']}"
  creates "#{fisheye_attrs['instance_dir']}/config.xml"
end


runit_service "fisheye"

