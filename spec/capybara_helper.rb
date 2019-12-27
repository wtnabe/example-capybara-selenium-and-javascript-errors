require 'webdrivers/chromedriver'

Capybara.register_driver :selenium_chrome do |app|
  opts = Selenium::WebDriver::Chrome::Options.new
  opts.add_argument 'headless'
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: opts)
end
