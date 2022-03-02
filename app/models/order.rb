class Order < ApplicationRecord
  belongs_to :household
  has_many :lists
  validates :title, presence: true
  validates :end_date, presence: true
end
