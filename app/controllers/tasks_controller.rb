class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
        @task.save
        redirect_to tasks_index_path

  end

  def new

  end

  def edit
  @task = Task.find(params[:format])

  end

  def show
    @task = Task.find(params[:format])

  end

  def update
    Task.update(task_params)
    redirect_to tasks_index_path

  end

  def destroy
    @task = Task.find(params[:format])
    @task.destroy
  redirect_to tasks_index_path
  end
end

private

  def task_params
    params.require(:task).permit(:title ,:details , :completed )
  end
