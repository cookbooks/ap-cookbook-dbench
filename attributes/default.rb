#
# Cookbook Name:: dbench
# Attributes:: default
#
# Copyright 2011, Eric G. Wolfe
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

default['dbench']['src_path'] = "/usr/src"
default['dbench']['git_url'] = "git://git.samba.org/sahlberg/dbench.git"
case node['platform']
when "redhat","centos","scientific","amazon"
  default['dbench']['pre_reqs'] = [ "libsmbclient-devel" ]
when "debian","ubuntu"
    default['dbench']['pre_reqs'] = [ "libsmbclient-dev" ]
end
