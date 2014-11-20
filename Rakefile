require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new do |t|
	t.libs << 'test'
	t.pattern='"**/*_test.rb"'
end

task :default => :test

task :console do
	exec "pry -r 'page_right' -I './lib'"
end