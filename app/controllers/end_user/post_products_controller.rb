class EndUser::PostProductsController < ApplicationController
  def new
    @postProduct = PostProduct.new
  end

  def create
    @postProduct = PostProduct.new(post_product_params)
    @postProduct.end_user_id = current_end_user.id
    if @postProduct.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @postProducts = PostProduct.all
  end

  def show
    @postProduct = PostProduct.find(params[:id])
  end

  def edit
    @postProduct = PostProduct.find(params[:id])
  end

  def update
    @postProduct = PostProduct.find(params[:id])
    @postProduct.update(post_product_params)
    redirect_to post_product_path(@postProduct.id)
  end



  private
  def post_product_params
    params.require(:post_product).permit(:productName, :message, :howToGet, :shopName, post_images_images: [] )
  end

end
