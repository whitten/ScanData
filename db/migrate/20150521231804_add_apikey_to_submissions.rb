# Encoding: utf-8
# Add API Key to Submissions
class AddApikeyToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :apikey, :string
  end
end
