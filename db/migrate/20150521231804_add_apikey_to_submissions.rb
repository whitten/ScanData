class AddApikeyToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :apikey, :string
  end
end
