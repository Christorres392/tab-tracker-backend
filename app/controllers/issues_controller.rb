class IssuesController < ApplicationController
    def index
        @issues = Issue.all

        render json: @issues
    end
    
    def show
        @issue = Issue.find(params[:id])
        render json: @issue
    end

    def create
        @issue = Issue.new(issue_params)
        @issue.save
        render json: @issue
    end

    def destroy
        Issue.find(params[:id]).destroy
    end

    def update
        @issue = Issue.find(params[:id])
        @issue.update(issue_params)
    end
    
    private

    def issue_params
        params.require(:issue).permit(:issue_name, :priority, :description, :in_progress, :project_id)
    end

end
