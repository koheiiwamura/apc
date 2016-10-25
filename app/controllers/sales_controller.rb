class SalesController < ApplicationController
  def index
    @sales = Sale.all
  end

  def edit
    @sale = Sale.find(params[:id])
  end
end
