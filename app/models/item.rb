class Item < ApplicationRecord
    has_many :inventory_list_items
    has_many :inventory_lists, through: :inventory_list_items
end