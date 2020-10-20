class ReferencesController < ApplicationController
    def index
        @references = Reference.all
        render json: @references
    end

    def show
        @reference = Reference.find_by(id: params[:id])
        render json: @reference
    end
    
    def create
        @reference = Reference.new(reference_params)
        @reference.save
        render json: @reference
    end

    def destroy
        @reference = Reference.find(params[:id])
        @reference.destroy
        render json: @reference
    end

    private

    def reference_params
        params.require(:reference).permit(:url, :note, :issue_id)
    end

  
end
