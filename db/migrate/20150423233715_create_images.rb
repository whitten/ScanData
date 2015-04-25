class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :width
      t.integer :height
      t.references :document, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
