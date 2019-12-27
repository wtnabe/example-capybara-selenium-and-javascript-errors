require 'spec_helper'
require 'capybara_helper'

require_relative '../app'

describe 'Index with Selenium' do
  include Capybara::DSL

  before(:all) {
    Capybara.current_driver = :selenium_chrome
    Capybara.server   = :webrick
    Capybara.server_port = 3232
    Capybara.app = Sinatra::Application
  }

  after(:all) {
    Capybara.current_driver = :rack_test
  }

  it 'DOM structure' do
    visit '/'

    assert {
      page.find('h1').text.include?('Heading')
    }
  end

  it 'JavaScript console' do
    visit '/'

    assert {
      page.driver.browser.manage.logs.get(:browser).select {|log| log.level == 'SEVERE' }.size == 0
    }
  end
end
