class CreateInventoryListItems < ActiveRecord::Migration[6.1]
  def change
    create_table :inventory_list_items do |t|
      t.references :inventory_list, foreign_key: true
      t.references :item, foreign_key: true
      t.timestamps
    end
  end
end
