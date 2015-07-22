# Encoding: utf-8
#
# Cookbook Name:: cookbook_skeleton
# Provider:: default
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

# Chef LWRP Provider Example
# ==========================
#
# Chef LWRP providers documentation:
#   https://docs.chef.io/lwrp.html#custom-providers-w-platform-resources
#

# Whether chef why-run mode is supported.
def whyrun_supported?
  true
end

#
# @example
#   cookbook_skeleton 'name' do
#     attr1 'value1'
#     action :create
#   end
#
action :create do
  # If why-run is supported, you must use #converge_by
  converge_by("Create #{new_resource}") do
    log "LWRP: Create #{new_resource}"
    # [...]
  end
end
