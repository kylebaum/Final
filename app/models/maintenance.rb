class Maintenance < ActiveRecord::Base

  belongs_to :user
belongs_to :property

validates :user_id, :presence => true
validates :property_id, :presence => true
validates :body, :presence => true

end
