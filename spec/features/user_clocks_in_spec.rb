require 'spec_helper'

feature 'user clocks in' do 
  #use factory for user
  scenario 'valid clock in' do 
    visit user_home
    click_button 'Clock In'

    expect(page).to have_content('Successfully clocked In')
    expect(page).to have_content('Clock Out')
  end 

  scenario 'user already clocked in' do 
    #set clock_in past clock_out
    visit user_home
    
    expect(page).to not have_content('Clock In')
  end
end