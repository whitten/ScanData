class AddPageAndErrorToImage < ActiveRecord::Migration
  def change
    add_column :images, :page, :integer
    add_column :images, :error, :string
  end
end
