class InventoryListItem < ApplicationRecord
    belongs_to :item
    belongs_to :inventory_list
end