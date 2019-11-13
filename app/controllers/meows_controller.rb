class MeowsController < ApplicationController

    skip_before_action :verify_authenticity_token

    def index
        meows = Meow.all
        render json: meows
    end

    def create
        meow = Meow.new(meow_params)
        if meow.save
            render json: meow
        else
            render json: {errors: meow.errors.full_messages}, status: 403
        end
    end

    def new

    end

    def destroy
        meow = Meow.find(params[:id])
        meow.destroy()
    end

    private

    def meow_params
        params.require(:meow).permit(:body, :cat_id, :username)
    end
end
