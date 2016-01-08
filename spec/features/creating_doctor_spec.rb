require 'rails_helper'

RSpec.feature 'Creating a Doctor' do
  scenario 'Creates a doctor' do
    visit '/doctors/new'
    fill_in 'First Name', with: 'Steve'
    click_button 'Create Doctor'
    expect(page).to have_content("Successfully created!")
  end

end