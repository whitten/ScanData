# Encoding: utf-8
# Create inclusion
class CreateInclusions < ActiveRecord::Migration
  def change
    create_table :inclusions do |t|
      t.references :parent
      t.references :child

      t.timestamps null: false
    end
  end
end
