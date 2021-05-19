class EndUser::EndUsersController < ApplicationController

  def index
    @end_users = EndUser.all.where.not(id: current_end_user.id)
  end

  def show
    @end_user = EndUser.find(params[:id])
    @endUserPostProduct = EndUser.find(params[:id])
    @endUserPostProduct = @endUserPostProduct.post_products.all.page(params[:page]).per(9)
    @postProductNew = PostProduct.new
  end

  def edit
    @end_user = EndUser.find(params[:id])
  end

  def update
    @end_user = EndUser.find(params[:id])
    if @end_user.update(end_user_params)
      redirect_to end_user_path(@end_user.id)
    else
      render :edit
    end
  end



  private
  def end_user_params
    params.require(:end_user).permit(:nickname, :email, :self_introduction, :profile_pic)
  end


end





