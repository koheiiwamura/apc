class Sale < ActiveRecord::Base
  self.table_name = 'sale'
  belongs_to :user
  belongs_to :store
  has_many :sale_details
end
