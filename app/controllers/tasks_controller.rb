class TasksController < ApplicationController

def index
    @task = Task.all
end

def new
    @task = Task.new
end

def edit
end

def show
end

def update
end

def destory
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
