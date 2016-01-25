class TasksController < ApplicationController
  def show
    @task = Task.find(params[:id])
  end

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to @task, notice: 'New Task Created'
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :due_date)
  end
end
