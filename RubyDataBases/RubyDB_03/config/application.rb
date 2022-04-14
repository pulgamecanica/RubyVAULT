require 'active_record'
require 'sqlite3'
require 'yaml'
require_relative '../app/models/user'

configuration = YAML::load_file(File.join(__dir__, 'database.yml'))
ActiveRecord::Base.establish_connection(configuration['development'])
