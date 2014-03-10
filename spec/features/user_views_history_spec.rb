require 'spec_helper'

feature 'user views clock in/out history' do 
  scenario 'with valid permissions' do 
   #use factory to create user w/ clock_in/out history
    visit user_home
    click_link 'Previous ClockIns'

    expect(page).to have_content(user.clock_in.last)
    expect(page).to have_content(user.clock_out.last)
  end

  scenario 'with invaild permissions' do 
    #visit another user history page
    #expect page to not have another user info
    #expect page to have your info
  end
end