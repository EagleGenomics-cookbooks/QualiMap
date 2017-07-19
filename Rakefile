require 'cookstyle'
require 'rubocop/rake_task'
require 'foodcritic'
require 'rspec/core/rake_task'

RuboCop::RakeTask.new do |task|
  task.options << '--display-cop-names'
end
FoodCritic::Rake::LintTask.new(:foodcritic)
RSpec::Core::RakeTask.new(:rspec)

begin
  require 'kitchen/rake_tasks'
  Kitchen::RakeTasks.new

  desc 'Alias for kitchen:all'
  task all: 'kitchen:all'
rescue LoadError
  puts '>>>>> Kitchen gem not loaded, omitting tasks' unless ENV['CI']
end

desc 'Run all pre-convergence test: rubocop, foodcritic, rspec'
task tests: %i(rubocop foodcritic rspec)

desc 'Run kitchen: includes destroy, converge, verify - default: all'
task kitchen: [:all]

desc 'Run both tests, kitchen converge and verify'
task default: %i(tests kitchen)
