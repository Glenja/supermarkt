class Order < ApplicationRecord
  belongs_to :household
  has_many :lists
  validates :end_date, presence: true
end
