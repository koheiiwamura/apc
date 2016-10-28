class UsersController < ApplicationController
  def index
    @users = User.all.includes(:store)
  end
end
