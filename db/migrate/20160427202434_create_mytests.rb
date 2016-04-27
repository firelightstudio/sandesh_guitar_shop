class CreateMytests < ActiveRecord::Migration
  def change
    create_table :mytests do |t|

      t.timestamps
    end
  end
end
