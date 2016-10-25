class Good < ActiveRecord::Base
  self.table_name = 'goods_master'
  self.primary_key = 'goods_id'
  has_many :sale_details
end
