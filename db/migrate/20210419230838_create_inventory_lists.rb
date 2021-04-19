class CreateInventoryLists < ActiveRecord::Migration[6.1]
  def change
    create_table :inventory_lists do |t|
      t.references :move, foreign_key: true
      t.timestamps
    end
  end
end
