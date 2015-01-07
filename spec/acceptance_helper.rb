require File.dirname(__FILE__) + '/spec_helper'
require File.dirname(__FILE__) + '/../app/app.rb'

disable :run

require 'capybara/rspec'

Capybara.javascript_driver = :webkit
Capybara.app               = App

RSpec.configure do |config|
  config.include Capybara::DSL
end
