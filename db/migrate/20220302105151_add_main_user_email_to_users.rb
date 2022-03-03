class AddMainUserEmailToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :main_user_email, :string
  end
end
