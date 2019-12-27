require 'spec_helper'

require_relative '../app'

describe 'Index with Rack' do
  include Capybara::DSL

  before(:all) {
    Capybara.current_driver = :rack_test
    Capybara.app = Sinatra::Application
  }

  it {
    visit '/'

    assert {
      page.find('h1').text.include?('Heading')
    }
  }
end
