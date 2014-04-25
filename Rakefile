require "bundler/gem_tasks"
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |task|
  task.rspec_opts = ['--color', '--format', 'nested']
end

task :console do
  sh "irb -rubygems -I lib -r finagraph.rb"
end

task :default => :spec