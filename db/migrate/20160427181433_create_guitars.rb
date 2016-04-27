class CreateGuitars < ActiveRecord::Migration
  def change
    create_table :guitars do |t|
      t.string :name
      t.string :make
      t.string :color
      t.integer :mrp
      t.boolean :is_in_condition
      t.references :guitar_rack, index: true

      t.timestamps
    end
  end
end
