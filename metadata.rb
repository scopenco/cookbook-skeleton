# Encoding: utf-8
#
# Cookbook Name:: cookbook_skeleton
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

# Chef metadata documentation:
#   https://docs.chef.io/config_rb_metadata.html
#

name 'cookbook_skeleton'
maintainer 'Chef Brigade'
maintainer_email 'help@chefbrigade.io'
if respond_to?(:source_url)
  source_url "https://github.com/chef-brigade/#{name}-cookbook"
end
if respond_to?(:issues_url)
  issues_url "https://github.com/chef-brigade/#{name}-cookbook/issues"
end
license 'Apache 2.0'
description 'Installs/Configures cookbook_skeleton'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'

supports 'ubuntu'
# supports [...]

# Use pessimistic version constraint for dependencies:
depends 'runit', '~> 1.0'
# depends [...]

recipe 'cookbook_skeleton::default', 'Installs/Configures cookbook_skeleton'
# recipe [...]

provides 'cookbook_skeleton_lwrp1'
# provides [...]

attribute 'cookbook_skeleton/version',
          display_name: 'cookbook skeleton version',
          description: 'Skeleton version to install.',
          type: 'string',
          required: 'recommended',
          default: '0.1.0'
attribute 'cookbook_skeleton/url',
          display_name: 'cookbook skeleton url',
          description:
            'This is an attribute with very long description. Lorem ipsum ' \
            'dolor sit amet, consectetur adipiscing elit. Sed ut ex nulla. ' \
            'Proin in elit enim. Phasellus consectetur rhoncus lorem, at ...',
          type: 'string',
          required: 'optional',
          calculated: true
# attribute [...]
