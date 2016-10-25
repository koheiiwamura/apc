class Store < ActiveRecord::Base
  self.table_name = 'store_master'
  self.primary_key = 'storeid'
  has_many :users
  has_many :sales
end
