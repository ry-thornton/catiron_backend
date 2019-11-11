class FollowsController < ApplicationController
    def index
        follows = Follow.all
        render json: follows
    end

    def create
        follow = Follow.new(follow_params)
        if follow.save
            render json: follow
        else 
            render json: {errors: follow.errors.full_messages}, status: 403
    end

    def destroy
        follow = Follow.find(params[:id])
        follow.destroy()
    end

    private
    def follow_params
        params.require(:follow).permit(:followed_id, :follower_id)
    end
end
