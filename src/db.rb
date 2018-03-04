require 'active_record'
require 'yaml'

dbconfig = YAML.safe_load(File.read('db/database.yml'))

ENV['ENV'] ||= 'development'
ActiveRecord::Base.establish_connection(dbconfig[ENV['ENV']])

# samples table
class Sample < ActiveRecord::Base
end

