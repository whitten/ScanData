# Encoding: utf-8
# Add URL to archive
class AddUrlsToArchive < ActiveRecord::Migration
  def change
    add_column :archives, :dcmUrl, :string
    add_column :archives, :cbpUrl, :string
    add_column :archives, :gcdUrl, :string
    add_column :archives, :cbdbUrl, :string
  end
end
