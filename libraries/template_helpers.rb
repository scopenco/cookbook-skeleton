# Encoding: utf-8
#
# Cookbook Name:: cookbook_skeleton
# Library:: template_helpers
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

# Chef Library Example
# ====================
#
# A library allows arbitrary Ruby code to be included in a cookbook similar to
# a mixin in Ruby.
#
# It is recommended to include all your classes and modules in a namespace with
# the name of the cookbook. Use *Cookbook* as a suffix to avoid name collisions
# with Ruby or gem classes.
#
# @example
#   module MysqlCookbook
#
# Chef libraries documentation:
#   https://docs.chef.io/libraries.html
#

# `cookbook_skeleton` internal classes.
module CookbookSkeletonCookbook
  # Some helpers to use from `cookbook_skeleton` cookbook templates.
  #
  # @example
  #   self.class.send(:include, ::CookbookSkeletonCookbook::TemplateHelpers)
  module TemplateHelpers
    # Converts a Ruby array to a configuration list separated by commas.
    #
    # **Incomplete example for use as documentation.**
    #
    # @param ary [Array] array to convert.
    # @return [String] configuration value as string.
    # @example
    #   self.class.send(:include, ::CookbookSkeletonCookbook::TemplateHelpers)
    #   array_to_s([3, '4']) #=> "3,4"
    # @api private
    def array_to_s(ary)
      ary.map(&:to_s).join(',')
    end

    # [...]
  end
end
