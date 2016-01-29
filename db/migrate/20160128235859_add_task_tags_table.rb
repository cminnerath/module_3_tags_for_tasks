class AddTaskTagsTable < ActiveRecord::Migration
  def change
    create_table :task_tags do |t|
        t.references :tag
        t.references :task
    end
  end
end
