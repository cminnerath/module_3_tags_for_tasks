require 'rails_helper'

RSpec.describe 'a user', :type => :feature do
  let!(:user) { User.create(username: "User", password: "password", email: "e@e.com") }

  it 'creates a task' do
    login

    visit new_task_path

    fill_in 'Title',        with: 'Do some laundry'
    fill_in 'Description',  with: 'Start with sheets, move on to sweaters'
    fill_in 'Due date',     with: '01/01/2017'

    click_button 'Create Task'

    expect(page).to have_content 'New Task Created'
    expect(page).to have_content 'Do some laundry'
    expect(page).to have_content '2017-01-01'
  end

end
