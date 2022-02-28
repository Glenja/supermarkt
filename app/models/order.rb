class Order < ApplicationRecord
  belongs_to :household
  has_many :lists
end
