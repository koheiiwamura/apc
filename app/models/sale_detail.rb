class SaleDetail < ActiveRecord::Base
  self.table_name = 'sale_detail'
  belongs_to :sale
  belongs_to :good
end
