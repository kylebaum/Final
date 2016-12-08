class Property < ActiveRecord::Base


  belongs_to :user
  has_many :messages
  has_many :maintenances

  validates :user_id, :presence => true
  validates :price, :numericality => { :less_than_or_equal_to => 20000, :greater_than_or_equal_to => 100 }
  validates :numberofbedroom, :numericality => { :less_than_or_equal_to => 20, :greater_than_or_equal_to => 0 }
  validates :numberofbathroom, :numericality => { :less_than_or_equal_to => 20, :greater_than_or_equal_to => 1 }
  validates :address, :presence => true
end
