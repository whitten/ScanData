# Encoding: utf-8
# Fix type column name
class FixTypeColumnName < ActiveRecord::Migration
  def change
    rename_column :documents, :type, :file_type
    rename_column :submissions, :type, :file_type
  end
end
