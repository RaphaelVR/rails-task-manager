class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  # def list
  #   @tasks.each do |i|
  #     return i
  #   end
  # end

  def new
    @tasks = Task.new
  end

  def create
    @tasks = task.new(params[:task])
    @tasks.save
    redirect_to task_path(@task)
  end

  private

def task_params
  params.require(:task).permit(:title, :details, :complete)
end
end
