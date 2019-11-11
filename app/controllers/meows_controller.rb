class MeowsController < ApplicationController
    def index
        meows = Meow.all
        render json: meows
    end

    def create
        meow = meow.new(meow_params)
        if meow.save
            render json: meow
        else
            render json: {errors: meow.errors.full_messages}, status: 403
        end
    end

    def destroy
        meow = Meow.find(params[:id])
        meow.destroy()
    end

    private

    def meow_params
        params.require(:meow).permit(:body, :cat_id)
    end
end
