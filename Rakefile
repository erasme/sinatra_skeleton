require 'rake'
require 'rake/clean'
require 'rake/testtask'
require 'rspec/core/rake_task'

# Add current dir to lib path
$:.unshift(File.dirname(__FILE__))

# Load rake sub-tasks
Dir['tasks/*.rake'].each { |file| load(file) }

# Clean removes temporary files
CLEAN.include('coverage', 'doc', '.yardoc')

