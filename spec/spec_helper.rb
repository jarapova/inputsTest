require 'bundler/setup'
require 'selenium-webdriver'
require 'rspec'
require 'rspec-steps'
require 'capybara/rspec'
require 'true_automation/rspec'
require 'true_automation/driver/capybara'

RSpec.configure do |config|
 Capybara.register_driver :true_automation_driver do |app|
    TrueAutomation::Driver::Capybara.new(app)

  end

  Capybara.configure do |capybara|
    capybara.run_server = false
    capybara.default_max_wait_time = 5

    capybara.default_driver = :true_automation_driver
  end

  config.include Capybara::DSL
  config.include TrueAutomation::DSL

end

# selenium driver



# RSpec.configure do |config|
#
#   Capybara.register_driver :chrome do |app|
#     Capybara::Selenium::Driver.new(app, browser: :chrome)
#
#   end
#
#   Capybara.configure do |capybara|
#     capybara.run_server = false
#     capybara.default_max_wait_time = 5
#
#     capybara.default_driver = :chrome
#   end
#
#     config.include Capybara::DSL
# end