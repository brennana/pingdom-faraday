$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), "..", "lib")))
require "rubygems"
require "bundler/setup"
require "pingdom-faraday"

require "byebug"
require "logger"
require "rspec"
require "yaml"

LOGGER      = Logger.new(File.join(File.dirname(__FILE__), "test.log"))
CREDENTIALS = YAML.load_file(File.join(File.dirname(__FILE__), "..", "credentials.yml")).with_indifferent_access
