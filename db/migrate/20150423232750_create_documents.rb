class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :type, null: false
      t.string :digest, null: false, :limit => 64
      t.datetime :created, null: false
      t.integer :size, null: false
      t.boolean :folder, null: false

      t.timestamps null: false
    end
  end
end
