class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @tweets = user.tweets.page(params[:page]).order("created_at DESC").per(5)
  end
end