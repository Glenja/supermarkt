class List < ApplicationRecord
  belongs_to :order
  belongs_to :user
  has_many :items
  validates :title, presence: true
end
