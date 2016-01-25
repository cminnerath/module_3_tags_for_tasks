require 'rails_helper'

RSpec.describe Task, :type => :model do

  it 'creates a new task' do
    task = Task.create!(title: 'dishes', description: 'just load the washer')
    expect(Task.first.title).to eq('dishes')
  end

end
