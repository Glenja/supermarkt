class Household < ApplicationRecord
  has_many :orders
  has_many :users, through: :housemates
  has_many :housemates
  # validates :address, presence: true
  # validates :name, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
