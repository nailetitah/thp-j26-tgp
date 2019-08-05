class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_city = City.find(@user.city_id).name
    @user_gossips = @user.gossips
    @gossips_count = @user.gossips.count
  end
end
