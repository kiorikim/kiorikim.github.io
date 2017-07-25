class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def new
  @task = Task.new
  end
  def create
    @task = Task.new (task_params)
    @task.company =  current_company
      if @task.save
        redirect_to tasks_path
      else
        render "new"
      end
      flash[:notice] = "New task was added"
  end
  def show
    @task = Task.find(params[:id])
  end
  def edit
    @task = Task.find(params[:id])
  end
  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      flash[:notice] = "Your task was updated"
      redirect_to task_path(@task)
    else
      render "edit"
    end
  end
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:notice] = "Your task was deleted"
    redirect_to tasks_path
  end
  private
    def task_params
      params.require(:task).permit(:title,:description,:payment)
    end
end
