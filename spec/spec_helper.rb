require 'rspec'
require 'bundler/setup'
require 'capybara/rspec'
require 'rspec-steps'
require 'selenium-webdriver'


RSpec.configure do |config|

  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  end

  Capybara.configure do |capybara|
    capybara.run_server = false
    capybara.default_max_wait_time = 5

    capybara.default_driver = :chrome
  end

  config.include Capybara::DSL
end
