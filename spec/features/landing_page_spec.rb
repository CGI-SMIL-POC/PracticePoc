require 'spec_helper'


# feature 'User sees landing page' do
#   scenario 'with splash image, empty input fields, and buttons' do
#     visit "/"

#     #Login
#     expect(page).to have_content('Username')
#     expect(page).to have_content('Password')
#     expect(page).to have_content('Remember me')
    
#     #NewUser
#     expect(page).to have_content('Username')
#     expect(page).to have_content('Password')
#     expect(page).to have_content('Confirm password')
#     expect(page).to have_content('Last Name')
#     expect(page).to have_content('Email')
#     expect(page).to have_content('ZIP')
#     click_button "Create Account"
#     expect(page).to have_content("User Name can't be blank")
#   end
# end

# feature 'User enters required fields' do
#   scenario 'with valid values' do
#     visit "/"

# # #Login
# def sign_up_with(username, password)
#     visit "/"
#     fill_in 'Username', with: jaguilar
#     fill_in 'Password', with: password
#     fill_in 'Remember me', with: password
#     fill_in 'Password', with: password
#     click_button "Login"
#   end

# #Register
# def sign_up_with(email, password)
#     visit "/"
#     fill_in 'Username', with: email
#     fill_in 'Password', with: password
#     fill_in 'Confirm password', with: password
#     fill_in 'Last Name', with: password
#     fill_in 'Email', with: password
#     fill_in 'ZIP', with: password
#     click_button "Login"
#   end

#   end
# end

# spec/features/visitor_signs_up_spec.rb
# require 'spec_helper'

# feature 'user create account' do
#   scenario 'with valid username, password, ' do
#     sign_up_with 'jaguilar'

#     expect(page).to have_content('Sign In')
#   end

#   scenario 'with invalid lastname' do
#     sign_up_with 'jasguilar'

#     expect(page).to have_content('Sign In')
#   end

#   # scenario 'with blank password' do
#   #   sign_up_with 'valid@example.com', ''

#   #   expect(page).to have_content('Sign in')
#   # end

#   def sign_up_with(lastname)
#     visit "/"
#     fill_in 'user_lastname', with: lastname
#     click_button "Create Account"
#   end
# end

feature 'user create account' do
  scenario 'with valid username' do
    sign_up_with 'jaguilar'

    expect(page).to have_content('Sign In')
  end

  scenario 'with invalid username' do
    sign_up_with 'jasguilar'

    expect(page).to have_content('Sign In')
  end

  # scenario 'with blank password' do
  #   sign_up_with 'valid@example.com', ''

  #   expect(page).to have_content('Sign in')
  # end

  def sign_up_with(username)
    visit "/"
    within('form#new_user') do
    fill_in 'user_username', with: username
    click_button "Create Account"
  end
end