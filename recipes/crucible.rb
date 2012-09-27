#
# Cookbook Name:: atlassian
# Recipe:: crucible
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

remote_file "/tmp/fisheye-2.8.1.zip" do
  owner "vagrant"
  group "vagrant"
  mode "0644"
  source "http://www.atlassian.com/software/fisheye/downloads/binary/fisheye-2.8.1.zip"
  checksum "3021f20ccf77b988197fd8300d5ab9a1"
end

