class Household < ApplicationRecord
  has_many :orders
  has_many :users
  # validates :name, presence: true
end
