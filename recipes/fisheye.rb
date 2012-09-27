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

ark "fisheye" do
  url fisheye_attrs['url']
  version fisheye_attrs['version']
  # ark only supports sha256, this md5...
  #checksum '3021f20ccf77b988197fd8300d5ab9a1'
  path fisheye_attrs['home_dir']
  action :put
end

user fisheye_attrs['user'] do
  action :create
  comment "application user for fisheye"
  gid fisheye_attrs['group']
  shell ""
end

directory fisheye_attrs['instance_dir'] do
  owner fisheye_attrs['user']
  group fisheye_attrs['group']
  mode "0644"
end

execute "copy_config.xml" do
  command "cp #{fisheye_attrs['home_dir']}/config.xml} #{fisheye_attrs['instance_dir']}"
  creates "#{fisheye_attrs['instance_dir']}/config.xml"
end


runit_service "fisheye"



