class SaleDetail < ActiveRecord::Base
  self.table_name = 'sale_detail'
  
  belongs_to :sale
  has_one :store, through: :sale

  belongs_to :good, :foreign_key => "goods_id"
end
