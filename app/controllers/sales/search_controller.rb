class Sales::SearchController < ApplicationController
  def index
    search_users
  end

  private
  def search_users
    if params[:word].present?
      @users = User.where('username LIKE(?)',"%#{params[:word]}%")
    else
      @users = User.all
    end
  end
end
