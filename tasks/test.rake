require 'rake/testtask'

#Rake::TestTask.new do |t| 
#    t.libs << "test"
#    t.test_files = FileList['test/*_test.rb']
#
#    t.verbose = true
#end
#
require 'rspec/core/rake_task'

desc "Run specs"
RSpec::Core::RakeTask.new(:spec)

namespace :coverage do
  desc "run rspec code coverage"
  task :spec do
    ENV['COVERAGE'] = "true"
    Rake::Task[:spec].execute
  end

end

