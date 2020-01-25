class TasksController < ApplicationController

  before_action :set_params, only: [:show, :edit, :update, :destroy]

  def index         # GET /tasks
    @tasks = Task.all
  end

  def show          # GET /tasks/:id
  end

  def new           # GET /tasks/new
    @task = Task.new
  end

  def create        # POST /tasks
    task = Task.create(task_params)
    redirect_to tasks_path(task)
  end

  def edit          # GET /tasks/:id/edit
  end

  def update        # PATCH /tasks/:id
    @task.update(task_params)
    redirect_to tasks_path(task)
  end

  def destroy       # DELETE /tasks/:id
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_params
    @task = Task.find(params[:id])
  end
end
