class UsersController < ApplicationController
  def new
  end

  def index
  end

  def show
    # @user = User.find(params[:id]) #追記
  end

  def edit
  end
  def after_update_path_for(resource)
    user_path(id: current_user.id)
  end
  private
  # ストロングパラメータ
  def user_params
    params.require(:user).permit(:name, :profile)
  end
end
