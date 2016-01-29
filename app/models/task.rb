class Task < ActiveRecord::Base
  has_many :task_tags
  has_many :tags, through: :task_tags
  include TagParser
end
