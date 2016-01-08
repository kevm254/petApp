require 'rails_helper'

RSpec.feature 'Visiting home' do
  scenario 'Users visit the home page' do
    visit '/'
  end
end