require 'rails_helper'

RSpec.feature 'Tags', type: :feature do
  let!(:user) { User.create(username: "User", password: "password", email: "e@e.com") }

  it 'allows user to sort' do
    login
    create_tasks

    visit tasks_path
    click_on 'critical'

    expect(page).to have_content 'Do some laundry'
    expect(page).not_to have_content 'Add features'
    expect(page).not_to have_content 'Add tasks'

    visit tasks_path
    click_on 'home'

    expect(page).to have_content 'Do some laundry'
    expect(page).not_to have_content 'Add features'
    expect(page).not_to have_content 'Add tasks'
  end

end
