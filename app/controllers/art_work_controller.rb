class ArtWorkController < ApplicationController
    protect_from_forgery with: :null_session

    def index
        render json: ArtWork.last(5), only: [:id, :title]
    end

    def create

        @user = ArtWork.new(user_params)
        # @user = ArtWork.new(params[])
        if @user.save
            render json: @user, status: :created
        else
          render json: @user.errors, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.require(:art_work).permit(:title)
        
    end
end
