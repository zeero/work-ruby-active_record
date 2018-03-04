require 'active_record'
require 'yaml'
require 'logger'
require 'rake/testtask'

task default: :test

ENV['ENV'] ||= 'development'

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.libs << 'src'
  t.test_files = FileList['test/**/*_test.rb']
end

namespace :db do
  task migrate: :env do
    ActiveRecord::Migrator.migrate('db/migrate', ENV['VERSION'] ? ENV['VERSION'].to_i : nil)
  end

  task :env do
    dbconfig = YAML.safe_load(File.read('db/database.yml'))
    ActiveRecord::Base.establish_connection(dbconfig[ENV['ENV']])
    ActiveRecord::Base.logger = Logger.new('log/database.log')
  end
end

