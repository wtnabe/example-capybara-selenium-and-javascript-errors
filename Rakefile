# -*- mode: ruby -*-

require 'webdrivers/chromedriver'
load 'webdrivers/Rakefile'
require 'rake/testtask'

Rake::TestTask.new(:spec) do |t|
  t.libs    << 'spec'
  t.pattern = 'spec/**/*_spec.rb'
end

task :default => :spec do; end
