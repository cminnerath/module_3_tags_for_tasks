class Tag < ActiveRecord::Base
  has_many :task_tags
  has_many :tasks, through: :task_tags

  def to_s
    name
  end
end
