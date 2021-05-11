class EndUser::PostProductsController < ApplicationController
  def new
    @postProduct = PostProduct.new
  end

  def create
    @postProduct = PostProduct.new(post_product_params)
    @postProduct.end_user_id = current_end_user.id
    @postProduct.save
    redirect_to root_path
  end

  def index

  end

  def show
    @postProduct = PostProduct.find(params[:id])
  end

  def edit

  end

  def update

  end



  private
  def post_product_params
    params.require(:post_product).permit(:productName, :message, :howToGet, :shopName, post_images_images: [] )
  end

end
