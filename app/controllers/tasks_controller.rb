class TasksController < ApplicationController

def index
    @task = Task.all
end

def new
    @task = Task.new
end

def edit
    @task = Task.find(params[:id])
end

def show
end

def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
end

def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
end

def create
    @task = Task.create(task_params)
    redirect_to tasks_path
end

private
    def task_params
        params.require(:task).permit(:content)
    end



end
