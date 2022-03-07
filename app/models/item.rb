class Item < ApplicationRecord
  belongs_to :list

  def done
    self.done = true
  end

end
