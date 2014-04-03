# encoding: utf-8
#
# Cookbook Name:: etcd_ubuntu_server
# Recipe:: default
#
# Copyright (C) 2014, Darron Froese <darron@froese.org>
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

execute 'apt-get-update' do
  command 'apt-get update'
end

# Want to skip locale generation on Vagrant - causing
# Vagrant to crash. It's already done in our base Ubuntu AWS build.

bash 'touch locale' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
    touch /root/.locale-fixed
  EOH
end

include_recipe 'chef-sugar::default'

include_recipe 'ubuntu_base::default'

include_recipe 'octobase::default'

include_recipe 'etcd::default'
