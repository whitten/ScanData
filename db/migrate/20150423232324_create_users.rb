# Encoding: utf-8
# Create Users
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :apikey

      t.timestamps null: false
    end
  end
end
