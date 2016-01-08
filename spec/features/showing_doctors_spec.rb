require 'rails_helper'

RSpec.feature 'Showing doctors' do
  scenario 'User visits doctor page' do
    visit '/doctors'
  end
end