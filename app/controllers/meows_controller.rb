class MeowsController < ApplicationController
    def index
        meows = Meow.all
        render json: meows
    end
end
