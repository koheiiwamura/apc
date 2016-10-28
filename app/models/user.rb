class User < ActiveRecord::Base
  self.table_name = 'user_master'
  self.primary_key = 'userid'
  has_many :sales
  belongs_to :store, :foreign_key => "storeid"
end
