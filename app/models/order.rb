class Order < ApplicationRecord
  belongs_to :household
  has_many :lists, dependent: :destroy
  validates :end_date, presence: true
end
