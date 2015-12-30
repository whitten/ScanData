# Encoding: utf-8
# Remove e-mail from user
class RemoveEmailFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :email, :string
  end
end
