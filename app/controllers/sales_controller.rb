class SalesController < ApplicationController
  before_action :set_sale, only: [:edit, :update]
  before_action :set_sale_detail, only: [:edit, :update]
  before_action :set_goods, only: [:edit, :update]
  def new
    @sale_details = SaleDetail.all
  end
  def index
    @sales = Sale.all
  end

  def edit
    @goods = Good.all
    @stores = Store.all
  end

  def update
    @sale_detail.update(sale_detail_params)
    @good.update(goods_params)
    @store = Store.find_by(storeid: @sale.store.id)
    @store.update(store_params)
    redirect_to sales_path
  end

  private
  def set_sale
    @sale = Sale.find(params[:id])
  end
  def set_sale_detail
    @sale_detail = SaleDetail.find_by(sales_id: @sale.id)
  end
  def set_goods
    @good = Good.find_by(goods_id: @sale_detail.id)
  end
  def sale_detail_params
    params.permit(:sale_point, :sale_price)
  end
  def goods_params
    params.permit(:goods_name)
  end
  def store_params
    params.permit(:store_name)
  end
end
