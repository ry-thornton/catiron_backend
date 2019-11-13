
class CatsController < ApplicationController
    skip_before_action :verify_authenticity_token

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

    def new
        
    end

    
    def show
        cat = Cat.find(params[:id])
        render json: cat
    end

    def profile
        cat = Cat.find(params[:id])
        wantedMeows = cat.meows
        render json: wantedMeows
    end

    def feed
        cat = Cat.find(params[:id])
        catFollows = Follow.all.select { |follow| follow.follower_id == cat.id }.map{|follow| follow.followed_id}
        wantedMeows = Meow.all.select{ |meow| catFollows.include?(meow.cat_id) }
        
        render json: wantedMeows
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
        params.require(:cat).permit( :name, :password, :email, :nickname, :bio, :username)
    end
end
