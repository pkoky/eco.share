class EndUser::BookmarksController < ApplicationController
  
  
  def bookmarks
    @bookmarks = Bookmark.where(end_user_id: current_end_user.id)
  end
  
  def create
    @postProduct = PostProduct.find(params[:post_product_id])
    bookmark = @postProduct.bookmarks.new(end_user_id: current_end_user.id)
    if bookmark.save
    end
  end 
  
  def destroy
    @postProduct = PostProduct.find(params[:post_product_id])
    bookmark = @postProduct.bookmarks.find_by(end_user_id: current_end_user.id)
    if bookmark.present?
      bookmark.destroy
    end 
  end 
end
