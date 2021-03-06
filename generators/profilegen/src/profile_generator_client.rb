# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'profile_generator_options_parser'
require_relative 'profile_generator'

options = ProfileGeneratorOptionsParser.options ARGV
dir_metadata  = JSON.parse(File.read(options.dir_metadata))
profiles_file = JSON.parse(File.read(options.profile))
profiles = profiles_file[options.mode][options.key]

if !profiles.nil?
  profiles.each do |profile|
    ProfileGenerator.new(profile, dir_metadata, options.sdk_path).generate
  end
end
