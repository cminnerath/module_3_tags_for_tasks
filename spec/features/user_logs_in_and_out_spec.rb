require 'rails_helper'

RSpec.feature 'User', type: :feature do
  let!(:user) { User.create(username: "User", password: "password", email: "e@e.com") }

  it 'logs in and then logs out' do
    visit root_path

    fill_in "Username", with: "User"
    fill_in "Password", with: "password"

    click_on "Login"

    expect(current_path).to eq user_path

    expect(page).to have_content     'Welcome User!'
    expect(page).to have_content     'Logout'
    expect(page).not_to have_content 'Login'

    click_on "Logout"

    expect(page).to eq root_path
    expect(page).to have_content 'Goodbye!'
    expect(page).to have_content 'Login'
    expect(page).not_to have_content 'Logout'
  end

end
