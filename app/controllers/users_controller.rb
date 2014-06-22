class UsersController < ApplicationController
  helper UsersHelper
  def show
    p params
    @user = User.find(params[:id])
    @categories = @user.categories.all
  end

end
