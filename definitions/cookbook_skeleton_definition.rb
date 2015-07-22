# Encoding: utf-8
#
# Cookbook Name:: cookbook_skeleton
# Definition:: cookbook_skeleton_definition
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

# Chef Definition Example
# =======================
#
# A definition is code that is reused across recipes, similar to a compile-time
# macro.
#
# Chef definitions documentation:
#   https://docs.chef.io/definitions.html
#

# @example
#   cookbook_skeleton_definition 'name' do
#     param1 'value1'
#   end
define :cookbook_skeleton_definition do
  log "cookbook_skeleton_definition definition: #{params.inspect}"
  # [...]
end
