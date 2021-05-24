class Admins::EndUsersController < ApplicationController
  skip_before_action :authenticate_end_user!, only: [:index, :show]
  # authenticate_end_user!をapplication_controllerで定義しているため、上記を記述しないとログイン画面へリダイレクトされるため

  def index
    @endUsers = EndUser.all
  end

  def show
    @endUser = EndUser.find(params[:id])
  end

end
