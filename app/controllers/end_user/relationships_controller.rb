class EndUser::RelationshipsController < ApplicationController
  def follow
    @end_user = EndUser.find(params[:id])
    current_end_user.follow(params[:id])
  end

  def unfollow
    @end_user = EndUser.find(params[:id])
    current_end_user.unfollow(params[:id])
  end

  def follower
    end_user = EndUser.find(params[:id])
    @follower = end_user.follower_end_user
  end

  def followed
    end_user = EndUser.find(params[:id])
    @followed = end_user.following_end_user
  end



end
