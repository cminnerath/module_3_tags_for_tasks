class AddTasksTable < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.text :tag
    end
  end
end
