class CreateTasksTable < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.datetime :due_date
    end
  end
end
