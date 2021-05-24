class Admins::PostProductsController < ApplicationController
  skip_before_action :authenticate_end_user!, only: [:index, :show]
  # authenticate_end_user!をapplication_controllerで定義しているため、上記を記述しないとログイン画面へリダイレクトされるため

  def index
    @postProducts = PostProduct.all
  end

  def show
    @postProduct = PostProduct.find(params[:id])
  end
end
