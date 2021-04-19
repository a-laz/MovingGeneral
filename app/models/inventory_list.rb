class InventoryList < ApplicationRecord
    belongs_to :move
    has_many :inventory_list_items
    has_many :items, through: :inventory_list_items
end