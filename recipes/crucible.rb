#
# Cookbook Name:: atlassian
# Recipe:: crucible
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "atlassian::default"

ark "fisheye" do
  url 'http://www.atlassian.com/software/fisheye/downloads/binary/fisheye-2.8.1.zip'
  version '2.8.1'        
  # ark only supports sha256, this md5...
  #checksum '3021f20ccf77b988197fd8300d5ab9a1'
  path '/opt/atlassian/fisheye'
  action :put
end


