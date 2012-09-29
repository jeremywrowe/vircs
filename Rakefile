#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'bundler/setup'
require 'rspec/core/rake_task'
require 'fileutils'

include FileUtils::Verbose

desc 'Default: run specs.'
task :default => :spec

$here     = File.expand_path(File.dirname(__FILE__))
VIRCS_EXE = "vircs"
README    = "README.md"

desc "Run specs"
RSpec::Core::RakeTask.new {|t|}

namespace :vircs do

  desc "Install Vircs"
  task :install do
    dest_dir = File.expand_path(File.join(home, ".vims"))
    mkdir_p dest_dir
    cp File.expand_path(File.join($here, VIRCS_EXE)), dest_dir
    cp File.expand_path(File.join($here, README)),    dest_dir
    puts "\nInstallation almost complete, there is one last thing that needs to be done:"
    puts "\tPlease add #{dest_dir} to your path!"
    puts "\tOh yeah! Enjoy!"
  end

  private
  def home
    home_vars = ["HOME", "HOMEPATH"]
    home      = home_vars.detect {|h| ENV[h] != nil}
    ENV[home]
  end

end
