require 'bundler/setup'
require "rails"
Bundler.require

Dir["./spec/support/*.rb"].each{|f| require f }
