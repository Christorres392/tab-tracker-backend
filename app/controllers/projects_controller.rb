class ProjectsController < ApplicationController
    def index
        @projects = Project.all
        current_user()
        render json: @projects
    end
    
    def show
        @project = Project.find(params[:id])
        render json: @project
    end

    def create
        @project = Project.new(project_params)
        @project.save
        render json: @project
    end

    def destroy
        Project.find(params[:id]).destroy
    end

    def update
        @project = Project.find(params[:id])
        @project.update(project_params)
    end

    private

    def project_params
        params.require(:project).permit(:project_name, :user_id)
    end
end
