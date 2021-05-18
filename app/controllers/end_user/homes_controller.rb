class EndUser::HomesController < ApplicationController
  def top
    @postProducts = PostProduct.all.order(created_at: :desc).limit(3)
  end
  def about
  end
end
