require 'rails_helper'

RSpec.describe 'a vistor', :type => :feature do

  it 'becomes a user' do
    visit new_user_path

    fill_in 'Username',   with: 'Username'
    fill_in 'Password',   with: 'Password'
    fill_in 'Email',      with: 'user@provider.com'

    click_button 'Create User'

    expect(page).to have_content 'Welcome!'
    expect(page).to have_content 'Username'
    expect(page).to have_content 'user@provider.com'
  end

end
