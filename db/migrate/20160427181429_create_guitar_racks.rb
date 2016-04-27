class CreateGuitarRacks < ActiveRecord::Migration
  def change
    create_table :guitar_racks do |t|

      t.timestamps
    end
  end
end
