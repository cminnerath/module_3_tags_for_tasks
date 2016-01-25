require 'rails_helper'

RSpec.describe User, :type => :model do

  it 'creates a new user' do
    task = User.create!(username: 'user', password: 'hello', email: 'a@a.com')
    expect(User.first.username).to eq('user')
  end

end
