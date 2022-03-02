class Household < ApplicationRecord
  has_many :orders
  has_many :users
  validates :address, presence: true
  validates :name, presence: true
end
