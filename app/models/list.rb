class List < ApplicationRecord
  belongs_to :order
  belongs_to :user
  has_many :items, dependent: :destroy
  # validates :title, presence: true
end
