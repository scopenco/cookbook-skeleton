# Encoding: utf-8
#
# Cookbook Name:: cookbook_skeleton
# Attributes:: default
# Author:: John Doe (<john.doe@example.com>)
# Copyright:: Copyright (c) 2015 Chef Brigade (www.chefbrigade.io)
# License:: Apache License, Version 2.0
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

# Chef Attribute File Example
# ===========================
#
# The attributes in this file are evaluated in the context of a node object on
# each chef-run.
#
# The *default.rb* attribute file is loaded before all the other attribute
# files.
#
# Chef attribute files documentation:
#   https://docs.chef.io/attributes.html#attribute-files
#

default['cookbook_skeleton']['version'] = '0.1.0'

# Derived attribute example:
default['cookbook_skeleton']['url'] =
  'http://chefbrigade.io/app-%{version}.tar.gz'
# See recipe/_install.rb
