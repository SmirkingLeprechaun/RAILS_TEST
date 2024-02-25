class TestController < ApplicationController
    def index
        render json: ArtWork.all
    end
end
