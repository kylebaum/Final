class Property < ActiveRecord::Base


  belongs_to :user
  has_many :messages
  has_many :maintenances

  validates :user_id, :presence => true
end
