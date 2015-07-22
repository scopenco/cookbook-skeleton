# Encoding: utf-8
#
# Cookbook Name:: cookbook_skeleton
# Resource:: default
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

# Chef LWRP Resource Example
# ==========================
#
# Chef LWRP resources documentation:
#   https://docs.chef.io/lwrp.html#custom-resources
#

actions :create, :remove

attribute :user, kind_of: String, name_attribute: true
attribute :attr1, kind_of: String, default: ''
attribute :active, kind_of: [TrueClass, FalseClass], default: true
attribute :db_type, equal_to: %w(mysql postgresql), default: 'mysql'
