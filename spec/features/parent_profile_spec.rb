require 'spec_helper'


feature 'User navigates to the Parent Profile page' do

  scenario 'with parent profile information populated in read-only mode' do
    visit "/"
    expect(page).to have_content('Username')
    expect(page).to have_content('password')
    expect(page).to have_content('Email')
    expect(page).to have_content('ZIP Code')
    expect(page).to have_content('Last Name')
    expect(page).to have_content('First Name')
    expect(page).to have_content('Middle Initial')
    expect(page).to have_content('Suffix')
    expect(page).to have_content('Street Address')
    expect(page).to have_content('City')
    expect(page).to have_content('State')
    expect(page).to have_content('Home Phone')
    expect(page).to have_content('Cell Phone')
    expect(page).to have_content('Martital Status')

    scenario 'with parent profile information populated in edit mode' do
    visit "/"
    expect(page).to have_content('Username')
    expect(page).to have_content('password')
    expect(page).to have_content('Email')
    expect(page).to have_content('ZIP Code')
    expect(page).to have_content('Last Name')
    expect(page).to have_content('First Name')
    expect(page).to have_content('Middle Initial')
    expect(page).to have_content('Suffix')
    expect(page).to have_content('Street Address')
    expect(page).to have_content('City')
    expect(page).to have_content('State')
    expect(page).to have_content('Home Phone')
    expect(page).to have_content('Cell Phone')
    expect(page).to have_content('Martital Status')
    click_button "Save"
    click_button "Cancel"

    def update_with(email)
      visit "/"     
      fill_in 'Email', with: email
      fill_in 'ZIP Code', with: zipcode
      fill_in 'Last Name', with: lastname
      fill_in 'First Name', with: firstname
      fill_in 'Middle Initial', with: middleinitial
      fill_in 'Suffix', with: suffix
      fill_in 'Street Address', with: streetaddress
      fill_in 'City', with: city
      fill_in 'State', with: State
      fill_in 'Home Phone', 
	  fill_in 'Cell Phone', 
	  fill_in 'Martital Status', 
      click_button "Save"
    end

 end
end   