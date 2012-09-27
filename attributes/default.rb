#
# Cookbook Name:: atlassian
# Attributes:: atlassian
#
# Copyright 2008-2009, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['atlassian']['fisheye']['version'] = '2.8.1'
default['atlassian']['fisheye']['url'] = 'http://www.atlassian.com/software/fisheye/downloads/binary/fisheye-2.8.1.zip'
default['atlassian']['fisheye']['user'] = 'fisheye'
default['atlassian']['fisheye']['group'] = 'fisheye'
default['atlassian']['fisheye']['home_dir'] = '/opt/atlassian/fisheye'
default['atlassian']['fisheye']['instance_dir'] = '/var/atlassian/fisheye'