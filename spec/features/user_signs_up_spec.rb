require 'spec_helper'

feature 'user sign up' do
  scenario 'user registers with valid attributes' do 
    visit root_path
    click_link 'Sign Up'

    fill_in 'Email', with: 'email@gmail.com'
    fill_in 'First Name', with: 'Joe'
    fill_in 'Last Name', with: 'Smith'
    fill_in 'Password', with: 'password'
    fill_in 'Password Confirmation', with: 'password'

    click_button 'Sign Up'

    expect(page).to have_content('Successfully signed up')
    expect(page).to have_content('Sign Out')
  end
end