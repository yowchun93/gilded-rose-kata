# require 'rspec/core/rake_task'
# require 'flog_cli'

# RSpec::Core::RakeTask.new(:spec)

# desc 'Flog report'
# task :flog do
#   f = FlogCLI.new methods: true, group: true, all: true, blame: true
#   f.flog 'lib/gilded_rose.rb'
#   f.report
# end

require 'rake/testtask'
Rake::TestTask.new

task :default => :test
task :test do
  Dir.glob('./test/*_test.rb').each { |file| require file}
end