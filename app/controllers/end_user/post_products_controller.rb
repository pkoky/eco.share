class EndUser::PostProductsController < ApplicationController
  skip_before_action :authenticate_end_user!, only: [:index, :show]

  def new
    @postProduct = PostProduct.new
  end

  def create
    @postProduct = PostProduct.new(post_product_params)
    @postProduct.end_user_id = current_end_user.id
    @postProduct.score = Language.get_data(post_product_params[:message])
    @postProduct.save
    @end_user = current_end_user
    @endUserPostProduct = current_end_user.post_products.all.page(params[:page]).per(9)
  end

  def index
    @postProducts = PostProduct.all.page(params[:page]).per(9)
  end

  def show
    @postProduct = PostProduct.find(params[:id])
  end

  def edit
    @postProduct = PostProduct.find(params[:id])
  end

  def update
    @postProduct = PostProduct.find(params[:id])
    @postProduct.score = Language.get_data(params[:post_product][:message])
    @postProduct.update(post_product_params)
    redirect_to post_product_path(@postProduct.id)
  end

  def destroy
    # post_product_path(:id) method: :delete
    @postProduct = PostProduct.find(params[:id])
    @postProduct.destroy
    redirect_to end_user_path(@postProduct.end_user)
  end



  private
  def post_product_params
    params.require(:post_product).permit(:productName, :message, :howToGet, :shopName, post_images_images: [] )
  end

end



# score > 0.6 <i class="far fa-grin-hearts"></i>
# score > 0.1 <i class="far fa-smile-wink"></i>
# score > -0.5 <i class="far fa-angry"></i>
# score > -1.0 <i class="far fa-sad-tear"></i>