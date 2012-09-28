#
# Cookbook Name:: atlassian
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "ark"
include_recipe "java::openjdk"
include_recipe "runit"

# XXX: fix missing symlink on ubuntu - actually a bug in the java recipe?
if platform?("ubuntu", "debian") and node['java']['jdk_version'].to_i == 6
  link node['java']['java_home'] do
    to "/usr/lib/jvm/java-6-openjdk-amd64/"
  end
end


