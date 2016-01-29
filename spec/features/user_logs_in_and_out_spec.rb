require 'rails_helper'

RSpec.feature 'User', type: :feature do
  let!(:user) { User.create(username: "User", password: "password", email: "e@e.com") }

  it 'logs in and then logs out' do
    login

    expect(current_path).to eq root_path

    expect(page).to have_content 'Welcome User!'
    expect(page).to have_button('Logout')
    expect(page).not_to have_button('Login')

    click_on "Logout"

    expect(current_path).to eq root_path
    expect(page).to have_content 'Goodbye!'
    expect(page).to have_button('Login')
    expect(page).not_to have_button('Logout')
  end

end
