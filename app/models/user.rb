class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

      has_many :properties
      has_many :messages
      has_many :maintenances
      has_many :tenants
      has_many :owners
      has_many :managers

      validates :username, :uniqueness => true
      validates :username, :presence => true
end
