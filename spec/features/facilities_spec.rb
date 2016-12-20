require 'spec_helper'


feature 'User sees Facilities Link' do
  
  scenario 'with valid values' do
    visit "/"
    sign_up_with "ss7", "password", "password", "password", "rios7@fdd.com", "95608"

    page.should have_link("Find Children’s Residential Facilities", :href=>"/facility/facilities")
    #expect(page).to have_link('',href: 'http://localhost:3000')
    select_link  "Find Children’s Residential Facilities"
    click_link "/facility/facilities"
    expect(page).to have_content("Facilities Near You")
  end  

  scenario 'user sees Facilities page with grid and columns Facility Type, Facility Name, Facility Address, Facility Phone Number'do
    expect(page).to have_css('table')
    expect(page).to have_content("Facility Type")
    expect(page).to have_content("Facility Name")
    expect(page).to have_content("Facility Address")
    expect(page).to have_content("Facility Phone Number")
  end

  scenario 'user sees Facilities grid with records found'do
    page.should have_selector('table', :count => 1)
  end

  scenario 'user sees Facilities grid with no records found'do
    page.should have_selector('table', :count => 0)
    expect(page).to have_content("No facilities found in your ZIP Code")
  end

    def sign_up_with(username, password, confirmpassword, lastname, email, zip)
      visit "/"
      within('form#new_user') do
      fill_in 'Username', with: username
      fill_in 'Password', with: password
      fill_in 'user_password_confirmation', with: confirmpassword
      fill_in 'user_lastname', with: lastname
      fill_in 'user_email', with: email
      fill_in 'user_zipcode', with: zip
      click_button "Create Account"
    end  
    end 
end
