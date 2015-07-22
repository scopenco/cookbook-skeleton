# Encoding: utf-8
#
# Cookbook Name:: cookbook_skeleton
# Recipe:: default
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

# Chef Recipe Example
# ===================
#
# @example
#   include_recipe 'cookbook_skeleton'
#
# Chef recipes documentation:
#   http://docs.chef.io/recipes.html
#

log 'cookbook_skeleton::default recipe'

#
# The default recipe can be separated into multiple recipes.
#
# It is common to add "_" prefix to internal recipes:
include_recipe 'cookbook_skeleton::_install'
include_recipe 'cookbook_skeleton::_service'
