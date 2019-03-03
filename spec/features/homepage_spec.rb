require 'rails_helper'

RSpec.feature "Homepages", type: :feature do
    scenario "Users can view the homepage as the root" do 
    visit "/"
    expect(page).to have_content("Welcome to Instagram")
  end
end
