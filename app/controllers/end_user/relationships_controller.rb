class EndUser::RelationshipsController < ApplicationController
  def follow
    current_end_user.follow(params[:id])
    redirect_to root_path
  end 
  
  def unfollow
    current_end_user.unfollow(params[:id])
    redirect_to root_path
  end 
  
  
  
  
end
