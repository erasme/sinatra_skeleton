require 'yard'
require 'yard/rake/yardoc_task'

task :doc => :yard
YARD::Rake::YardocTask.new do |t|
  t.files   = ['lib/**/*.rb', '-', 'README.md' ]   # add other paths in array if required
  # the dash '-' is required so Yard knows it is NOT code
end
