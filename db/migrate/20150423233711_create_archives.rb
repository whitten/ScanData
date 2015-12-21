# Encoding: utf-8
# Create archive
class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.integer :pages
      t.references :document, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
