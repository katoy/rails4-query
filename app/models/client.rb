# Client
class Client < ActiveRecord::Base
  has_one :address
  has_many :orders
  has_and_belongs_to_many :roles

  validates :first_name, presence: true
end
