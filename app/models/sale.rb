class Sale < ActiveRecord::Base
  self.table_name = 'sale'
  belongs_to :user
  belongs_to :store, :foreign_key => "storeid"
  has_one :sale_detail
end
