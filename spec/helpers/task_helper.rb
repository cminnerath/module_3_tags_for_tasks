def create_tasks
  visit new_task_path
  fill_in 'Title',            with: 'Do some laundry'
  fill_in 'Description',      with: 'Start with sheets, move on to sweaters'
  fill_in 'Due date',         with: '01/01/2017'
  fill_in 'task[tag_parse]',  with: 'critical, home'
  click_button 'Create Task'

  visit new_task_path
  fill_in 'Title',            with: 'Add features'
  fill_in 'Description',      with: 'probably needs some stuff'
  fill_in 'Due date',         with: '01/01/2017'
  fill_in 'task[tag_parse]',  with: 'medium, general'
  click_button 'Create Task'

  visit new_task_path
  fill_in 'Title',            with: 'Add tasks'
  fill_in 'Description',      with: 'TDD, yo'
  fill_in 'Due date',         with: '01/01/2017'
  fill_in 'task[tag_parse]',  with: 'high, database'
  click_button 'Create Task'
end
