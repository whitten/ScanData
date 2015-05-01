class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :name
      t.string :type
      t.string :hash
      t.string :imageError
      t.integer :size
      t.integer :height
      t.integer :width
      t.integer :page
      t.datetime :modified
      t.boolean :folder
      t.references :user, index: true, foreign_key: true
      t.references :submission, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
