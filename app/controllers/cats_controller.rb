class CatsController < ApplicationController
    def index
        cats = Cat.all
        render json: cats
    end

    def create
        cat = Cat.new(cat_params)
        if cat.save
            render json: cat
        else
            render json: {errors: cat.errors.full_messages}, status: 403
        end
    end

    
    def show
        cat = Cat.find(params[:id])
        render json: cat
    end


    def update
        cat = Cat.find(params[:id])
        cat.update(cat_params)
        render json: cat
    end


    def destroy
        cat = Cat.find(params[:id])
        cat.destroy()
    end

    private
    def cat_params
        params.require(:cat).permit( :name, :password, :email, :nickname, :bio)
    end
end
