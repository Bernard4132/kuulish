class RelationshipsController < ApplicationController

  def follow
  	@user = User.find(params[:user_id])
  	current_user.follow(@user)
  	@follow = Follow.find_by(follower: @current_user, followable: @user)
  	respond_to do |format|
        format.html { redirect_to :back, notice: 'user followed' }
    end
  end

  def unfollow
  	@user = User.find(params[:user_id])
  	current_user.stop_following(@user)
  	respond_to do |format|
        format.html { redirect_to :back, notice: 'user followed' }
    end
  end

end