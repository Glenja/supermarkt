class Housemate < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :household, optional: true
  self.primary_key = 'id'
end
