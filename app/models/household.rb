class Household < ApplicationRecord
  has_many :orders
  has_many :users
  # validates :address, presence: true
  # validates :name, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
