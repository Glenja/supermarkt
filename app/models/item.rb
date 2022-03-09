class Item < ApplicationRecord
  belongs_to :list

  def mark_complete!
    self.done = true
  end

end
