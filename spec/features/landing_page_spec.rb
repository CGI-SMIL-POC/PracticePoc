require 'spec_helper'


feature 'User sees landing page' do
  scenario 'with splash image, empty input fields, and buttons' do
    visit "/"

    #Login
    expect(page).to have_content('Username')
    expect(page).to have_content('Password')
    
    #NewUser
    expect(page).to have_content('Username')
    expect(page).to have_content('Password')
    expect(page).to have_content('Confirm Password')
    expect(page).to have_content('Last Name')
    expect(page).to have_content('Email')
    expect(page).to have_content('ZIP Code')
    #expect(page).to have_image('capture.png')
    click_button "Create Account"
    expect(page).to have_content("Username is required")
  end
end

feature 'User enters required fields' do
  scenario 'with valid values' do
    visit "/"

#Login
def sign_up_with(username, password)
    visit "/"
    fill_in 'Username', with: username
    fill_in 'Password', with: password
    click_button "Login"
  end

#Register
def sign_up_with(username, password)
    visit "/"
    fill_in 'Username', with: username
    fill_in 'Password', with: password
    fill_in 'Confirm password', with: confirmpassword
    fill_in 'Last Name', with: lastname
    fill_in 'Email', with: email
    fill_in 'ZIP', with: zip
    click_button "Create Account"
  end

  end
end

# # spec/features/visitor_signs_up_spec.rb
# require 'spec_helper'

feature 'user create account' do
  scenario 'with valid lastname, ' do
    sign_up_with 'jaguilar'

    #expect(page).to have_content('Log In')
  end

  scenario 'with invalid lastname' do
    sign_up_with 'jasguilar'

    #expect(page).to have_content('Log In')
  end

  def sign_up_with(lastname)
    visit "/"
    fill_in 'user_lastname', with: lastname
    click_button "Create Account"
  end
end

# feature 'user create account' do
#   scenario 'with valid username' do
#     sign_up_with 'jaguilar'

#     expect(page).to have_content('Sign In')
#   end

#   scenario 'with invalid username' do
#     sign_up_with 'jasguilar'

#     expect(page).to have_content('Sign In')
#   end

#   def sign_up_with(username)
#     visit "/"
#     within('form#new_user') do
#     fill_in 'user_username', with: username
#     click_button "Create Account"
#   end
# end